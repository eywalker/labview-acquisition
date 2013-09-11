function points = segment3D(stack, x, y, z, varargin)

params.cellRadius = 1.5;
params.minDistance = 7;
params.threshold = 0;
params.maxThreshold = 1;
params.rawThreshold = 50;
params.maxCells = 5;
params.norm = [.01 .99]
params.padStack = 0;
params = parseVarArgs(params,varargin{:});

assert(length(x) == size(stack,2), 'X length incorrect');
assert(length(y) == size(stack,1), 'Y length incorrect');
assert(length(z) == size(stack,3), 'Z length incorrect');

dx = abs(x(end)-x(1)) / (length(x) - 1);
dy = abs(y(end)-y(1)) / (length(y) - 1);
dz = abs(z(end)-z(1)) / (length(z) - 1);

[xi yi zi] = meshgrid(linspace(-dx * length(x)/2, dx * length(x)/2, length(x)), ...
    linspace(-dy * length(y)/2, dx * length(y)/2, length(y)), ...
    linspace(-dz * (params.padStack + length(z))/2, dz * (params.padStack + length(z))/2, (params.padStack*2 + length(z))));

rawStack = double(stack);
stack = double(stack);
for i = 1:size(stack,3)
    im = stack(:,:,i);
    im = (im - prctile(im(:),params.norm(1)*100)) / diff(prctile(im(:),params.norm*100));    
    %im = (im - min(im(:))) / max(im(:));
    stack(:,:,i) = im;
end
%stack = cat(3,repmat(.9*stack(:,:,1),[1 1 params.padStack]),stack,.9*repmat(stack(:,:,end),[1 1 params.padStack]));

% filter image with gaussian to smooth it
f = exp(-(xi.^2 + yi.^2 + zi.^2) / 2 / params.cellRadius^2); f = f / sum(f(:));
f = fftn(fftshift(fftshift(fftshift(f,1),2),3));
s = abs(ifftn(fftn(stack) .* f));

% get rid of padding for filtering
s(:,:,[1:params.padStack end-params.padStack+1:end]) = [];
stack(:,:,[1:params.padStack end-params.padStack+1:end]) = [];
%s = stack;

% find local maxima
p = zeros(size(s));
p(2:end-1,2:end-1,2:end-1) = ...
    s(2:end-1,2:end-1,2:end-1) >= s(1:end-2,2:end-1,2:end-1) & ...
    s(2:end-1,2:end-1,2:end-1) >= s(3:end,2:end-1,2:end-1) & ...
    s(2:end-1,2:end-1,2:end-1) >= s(2:end-1,1:end-2,2:end-1) & ...
    s(2:end-1,2:end-1,2:end-1) >= s(2:end-1,3:end,2:end-1) & ...
    s(2:end-1,2:end-1,2:end-1) >= s(2:end-1,2:end-1,1:end-2) & ...
    s(2:end-1,2:end-1,2:end-1) >= s(2:end-1,2:end-1,3:end);

% keep local maxima over a threshold and get their coordinates
peaks = find((stack > params.threshold) & p & (stack < params.maxThreshold) & (rawStack > params.rawThreshold));
[points(:,1) points(:,2) points(:,3)] = ind2sub(size(p), peaks);

% subplot(211); imagesc(stack(:,:,3)'); subplot(212); imagesc(s(:,:,3)'); colorbar
% hold on;
% idx = find(points(:,3) >= 2 & points(:,3) <= 4);
% hold on; plot(points(idx,1),points(idx,2),'.');
% colormap gray

% reject neighbors that are too close
good = true(size(points,1),1);
[foo order] = sort(stack(peaks),'descend');
points = points(order,:);
coordinates(:,1) = y(points(:,1));
coordinates(:,2) = x(points(:,2));
coordinates(:,3) = z(points(:,3));
for i = 1:size(points,1)
    if good(i)
        d = sum(bsxfun(@minus,coordinates(i+1:end,:),coordinates(i,:)).^2,2);
        idx = i+find(d < params.minDistance^2);
        good(idx) = false;
    end
end
points = points(good,:);

% keep only random subset 
np = size(points,1);
idx = randperm(np);
idx = idx(1:min(params.maxCells,np));
points = points(idx,:);

imagesc(stack(:,:,10));
