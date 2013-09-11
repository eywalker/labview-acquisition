% find match between aod and mirror stack
% assumes aod and mirror stacks are loaded and the shear corrected stack is
% available
function [xoffset effectivewidth yoffset effectiveheight zoffset aodframeislarger] = FindMatch1(corr_data_aod, data_mirror, data_mirror_ch2,... 
                                                 pixelsize_aod, aod_scalelo_percentile, aod_scalehi_percentile,...
                                                 guiderefselection, manualcoarsexyalignment, manualaodrefselection, debug)


cm = [[0:1/255:1]' [0:1/255:1]' [0:1/255:1]'] ;
cm(1,:) = [0 0 1] ;
cm(252,:) = [1 0 0] ;
scrsz = get(0,'ScreenSize');

% log transform
%corr_data_aod = log10(corr_data_aod - min(corr_data_aod(:)) + 1) ;

%corr_data_aod = corr_data_aod ;

% spatial filter for both aod and mirror frames
[f1,f2] = freqspace(21,'meshgrid');
Hd = ones(21);
r = sqrt(f1.^2 + f2.^2);
Hd((r<0.1) | (r>0.3)) = 0;
win = fspecial('gaussian',21,2);
win = win ./ max(win(:));  % Make the maximum window value be 1.
h = fwind2(Hd,win);
for ii=1:size(corr_data_aod,3)
    corr_data_aod(:,:,ii) = filter2(h, squeeze(corr_data_aod(:,:,ii)), 'same') ;
end ;

% rescale
mindata = prctile(corr_data_aod(:),aod_scalelo_percentile) ;
maxdata = prctile(corr_data_aod(:),aod_scalehi_percentile) ;
corr_data_aod = (corr_data_aod - mindata)*253/(maxdata-mindata) ;
corr_data_aod = max(corr_data_aod, 2) ;
corr_data_aod = min(corr_data_aod,253) ;


scdata_mirror = data_mirror ;
scdata_mirror_ch2 = data_mirror_ch2 ;

% filter mirror stack
for ii=1:size(scdata_mirror,3)
    scdata_mirror(:,:,ii) = filter2(h, squeeze(scdata_mirror(:,:,ii)), 'same') ;
    scdata_mirror_ch2(:,:,ii) = filter2(h, squeeze(scdata_mirror_ch2(:,:,ii)), 'same') ;
end ;

% rescale
mindata = prctile(scdata_mirror(:),1) ;
maxdata = prctile(scdata_mirror(:),99) ;
scdata_mirror = (scdata_mirror - mindata)*253/(maxdata-mindata) ;
scdata_mirror = max(scdata_mirror, 2) ;
scdata_mirror = min(scdata_mirror,253) ;

mindata = prctile(scdata_mirror_ch2(:),1) ;
maxdata = prctile(scdata_mirror_ch2(:),99) ;
scdata_mirror_ch2 = (scdata_mirror_ch2 - mindata)*253/(maxdata-mindata) ;
scdata_mirror_ch2 = max(scdata_mirror_ch2, 2) ;
scdata_mirror_ch2 = min(scdata_mirror_ch2,253) ;

% for automatic x-y alignment, use the center frames from each stack
% assumption is that the center of the two stacks are roughly aligned
% during stack acquisition
aodframeislarger = false ;
if ((size(corr_data_aod,1) > size(scdata_mirror,1)) || (size(corr_data_aod,2) > size(scdata_mirror,2)))
    aodframeislarger = true ;
end ;
    
if (manualcoarsexyalignment)
    montage_frames = ones(size(corr_data_aod,1), size(corr_data_aod,2), 1, size(corr_data_aod,3)+1) ;
    for ii=1:size(corr_data_aod,3)
        montage_frames(:,:,1,ii) = corr_data_aod(:,:,ii) ;    
    end ;

    montage_rows = 6 ;
    montage_cols = ceil(size(corr_data_aod,3)/montage_rows) ;
    figure(4) ;
    colormap(cm) ;
    montage(montage_frames(:,:,:,1:size(corr_data_aod,3)), cm, 'Size', [montage_rows montage_cols]) ;
    title('Select AOD Frame for Rough Alignment with Mirror Frame...') ;

    % select aod frame
    [x y] = ginput(1) ;
    aodselframe_col = floor(x/size(corr_data_aod,2))+1 ;
    aodselframe_row = floor(y/size(corr_data_aod,1))+1 ;
    aodselframe = (aodselframe_row-1)*montage_cols+aodselframe_col ;

    montage_frames = ones(size(scdata_mirror,1), size(scdata_mirror,2), 1, size(scdata_mirror,3)+1) ;
    for ii=1:size(scdata_mirror,3)
        montage_frames(:,:,1,ii) = scdata_mirror(:,:,ii) ;    
    end ;

    montage_rows = 6 ;
    montage_cols = ceil(size(scdata_mirror,3)/montage_rows) ;
    figure(5) ;
    close;
    figure(5) ;
    colormap(cm) ;
    montage(montage_frames(:,:,:,1:size(scdata_mirror,3)), cm, 'Size', [montage_rows montage_cols]) ;
    title('Select Mirror Frame for Rough Alignment with AOD Frame...') ;

    % select aod frame
    [x y] = ginput(1) ;
    mirrorselframe_col = floor(x/size(scdata_mirror,2))+1 ;
    mirrorselframe_row = floor(y/size(scdata_mirror,1))+1 ;
    mirrorselframe = (mirrorselframe_row-1)*montage_cols+mirrorselframe_col ;

    if (aodframeislarger)
        % show the selected frames and position a rectangle the size of mirror
        % frame on the aod frame for rough alignment
        figure(6) ;
        close ;
        figure(6) ;
        colormap(cm) ;
        image(squeeze(corr_data_aod(:,:,aodselframe))) ;
        truesize ;
        title('AOD Frame: Position the Outline Rectangle to Roughly Overlap with the Mirror Frame') ;
        arect = get(6,'OuterPosition') ;
        set(6,'OuterPosition', [100 scrsz(4)/2 arect(3) arect(4)]) ;

        figure(7) ;
        close;
        figure(7) ;
        colormap(cm) ;
        image(squeeze(scdata_mirror(:,:,mirrorselframe))) ;
        truesize ;
        title('Mirror Frame') ;
        arect1 = get(7,'OuterPosition') ;
        set(7,'OuterPosition', [100+arect(3) scrsz(4)/2 arect1(3) arect1(4)]) ;

        figure(6) ;
        h = imrect(gca, [0 0 size(scdata_mirror,2) size(scdata_mirror,1)]);
        position = wait(h) ;
        [srcrow srccol destrow destcol effectivewidth effectiveheight] = getselrectoffsets(position, size(corr_data_aod,2), ...
                                                                            size(corr_data_aod,1), size(scdata_mirror,2), ...
                                                                            size(scdata_mirror,1)) ;
                                                                        
    else
        % show the selected frames and position a rectangle the size of aod
        % frame on the mirror frame for rough alignment
        figure(6) ;
        close ;
        figure(6) ;
        colormap(cm) ;
        image(squeeze(corr_data_aod(:,:,aodselframe))) ;
        truesize ;
        title('AOD Frame') ;
        arect = get(6,'OuterPosition') ;
        set(6,'OuterPosition', [100 scrsz(4)/2 arect(3) arect(4)]) ;
 
        figure(7) ;
        close ;
        figure(7) ;
        colormap(cm) ;
        image(squeeze(scdata_mirror(:,:,mirrorselframe))) ;
        truesize ;
        title('Mirror Frame: Position the Outline Rectangle to Roughly Overlap with the AOD Frame') ;
        arect1 = get(7,'OuterPosition') ;
        set(7,'OuterPosition', [100+arect(3) scrsz(4)/2 arect1(3) arect1(4)]) ;

        h = imrect(gca, [0 0 size(corr_data_aod,2) size(corr_data_aod,1)]);
        position = wait(h) ;
        
        [srcrow srccol destrow destcol effectivewidth effectiveheight] = getselrectoffsets(position, size(scdata_mirror,2), ...
                                                                            size(scdata_mirror,1), size(corr_data_aod,2), ...
                                                                            size(corr_data_aod,1)) ;
    end ;
    
 else
    aodselframe = round(size(corr_data_aod,3)/2) ;    
    mirrorselframe = round(size(scdata_mirror,3)/2) ;

   if (aodframeislarger)
        % show the selected frames and position a rectangle the size of mirror
        % frame on the aod frame for rough alignment
        figure(6) ;
        close ;
        figure(6) ;
        colormap(cm) ;
        image(squeeze(corr_data_aod(:,:,aodselframe))) ;
        truesize ;
        title('AOD Frame: Position the Outline Rectangle to Roughly Overlap with the Mirror Frame') ;
        arect = get(6,'OuterPosition') ;
        set(6,'OuterPosition', [100 scrsz(4)/2 arect(3) arect(4)]) ;

        figure(7) ;
        close ;
        figure(7) ;
        colormap(cm) ;
        image(squeeze(scdata_mirror(:,:,mirrorselframe))) ;
        truesize ;
        title('Mirror Frame') ;
        arect1 = get(7,'OuterPosition') ;
        set(7,'OuterPosition', [100+arect(3) scrsz(4)/2 arect1(3) arect1(4)]) ;
        
        figure(6) ;
        h = imrect(gca, [0 0 size(scdata_mirror,2) size(scdata_mirror,1)]);
        position = wait(h) ;        
        [srcrow srccol destrow destcol effectivewidth effectiveheight] = getselrectoffsets(position, size(corr_data_aod,2), ...
                                                                            size(corr_data_aod,1), size(scdata_mirror,2), ...
                                                                            size(scdata_mirror,1)) ;
    else
        % show the selected frames and position a rectangle the size of aod
        % frame on the mirror frame for rough alignment
        figure(6) ;
        close;
        figure(6) ;
        colormap(cm) ;
        image(squeeze(corr_data_aod(:,:,aodselframe))) ;
        truesize ;
        title('AOD Frame') ;
        arect = get(6,'OuterPosition') ;
        set(6,'OuterPosition', [100 scrsz(4)/2 arect(3) arect(4)]) ;
 
        figure(7) ;
        close ;
        figure(7) ;
        colormap(cm) ;
        image(squeeze(scdata_mirror(:,:,mirrorselframe))) ;
        truesize ;
        title('Mirror Frame: Position the Outline Rectangle to Roughly Overlap with the AOD Frame') ;
        arect1 = get(7,'OuterPosition') ;
        set(7,'OuterPosition', [100+arect(3) scrsz(4)/2 arect1(3) arect1(4)]) ;
        
        h = imrect(gca, [0 0 size(corr_data_aod,2) size(corr_data_aod,1)]);
        position = wait(h) ;
        [srcrow srccol destrow destcol effectivewidth effectiveheight] = getselrectoffsets(position, size(scdata_mirror,2), ...
                                                                            size(scdata_mirror,1), size(corr_data_aod,2), ...
                                                                            size(corr_data_aod,1)) ;
    end ;
end ;
figure(6) ;
close;
figure(7);
close ;

% pull the portion of the aod frame roughly in alignment (x-y only) with the mirror frame
% find frames in aod stack that have a minimum number of bright cells
% look at every nth frame
frameskipcount = 2 ;
minmumcontrast =  0.5 ; % 0.2
montage_frames = ones(size(corr_data_aod,1), size(corr_data_aod,2), 1, size(corr_data_aod,3)+1) ;
numcells = zeros(size(corr_data_aod,3),1) ;
if (guiderefselection)
    cells_x = zeros(size(corr_data_aod,1)*size(corr_data_aod,2),size(corr_data_aod,3)) ; 
    cells_y = zeros(size(corr_data_aod,1)*size(corr_data_aod,2),size(corr_data_aod,3)) ;
    for ii=1:frameskipcount:size(corr_data_aod,3)
        if (aodframeislarger)
            im1 = zeros(size(scdata_mirror,1), size(scdata_mirror,2))+min(corr_data_aod(:)) ;
            im1(destrow:size(scdata_mirror,1), destcol:size(scdata_mirror,2)) = squeeze(corr_data_aod(srcrow:srcrow+effectiveheight-1,...
                                                                                        srccol:srccol+effectivewidth-1, ii)) ;
        else
            im1 = squeeze(corr_data_aod(:,:, ii)) ;
        end ;
        cf=CellFinder(im1, pixelsize_aod, 'minContrast', minmumcontrast) ;
        [x,y,radii,contrast,sharpness,correlation]=getCells(cf);
        numcells(ii) = length(x) ;
        cells_x(1:numcells(ii),ii) = x ;
        cells_y(1:numcells(ii),ii) = y ;
    end ;
     
    if (debug)
        figure(1) ;
        plot(numcells) ;
    end ;

    %  label the aod frames that have more than some minimum number of bright cells
    minimumbrightcells = 3 ;
    marksize = 20 ;
    for ii=1:size(corr_data_aod,3)
        im1 = corr_data_aod(:,:,ii) ;  
        if (numcells(ii) >= minimumbrightcells)
            im1(1:marksize,1:marksize) = 255 ;
        end ;
        montage_frames(:,:,1,ii) = im1 ; 
    end ;
else
   for ii=1:size(corr_data_aod,3)
        montage_frames(:,:,1,ii) = corr_data_aod(:,:,ii) ;  
    end ;
end ;


if (manualaodrefselection)

    montage_rows = 6 ;
    montage_cols = ceil(size(corr_data_aod,3)/montage_rows) ;
    figure(4) ;
    close ;
    figure(4) ;
    colormap(cm) ;
    montage(montage_frames(:,:,:,1:size(corr_data_aod,3)), cm, 'Size', [montage_rows montage_cols]) ;
    if (guiderefselection)
        title('Select One of The Marked AOD Frames as the Reference Frame') ;
    else
        title('Select One of The AOD Frames as the Reference Frame') ;
    end ;


    % pick a frame as the reference aod frame against which all the mirror
    % frames will be correlated to find a match
    [x y] = ginput(1) ;
    aodselframe_col = floor(x/size(corr_data_aod,2))+1 ;
    aodselframe_row = floor(y/size(corr_data_aod,1))+1 ;
    aodselframe = (aodselframe_row-1)*montage_cols+aodselframe_col ;
else
    aodselframe = round(size(corr_data_aod,3)/2) ;    
end ;

if (aodframeislarger)
    im1 = zeros(size(scdata_mirror,1), size(scdata_mirror,2)) ;
    im1(destrow:destrow+effectiveheight-1, destcol:destcol+effectivewidth-1) = squeeze(corr_data_aod(srcrow:srcrow+effectiveheight-1,...
                                                                              srccol:srccol+effectivewidth-1, aodselframe)) ;
else
    im1 = squeeze(corr_data_aod(:,:,aodselframe)) ;
end ;
close ;

% isolate bright cells in this frame, but this time, use a lesser minimum
% contrast, note that the resuts are stored in the same array, but now only
% the elements at index aodselframe are relevant
done = false ;
minc = 0.3 ; % was 0.25
mincells = 25 ; % was 7
maxcells = 35 ; % was 15
while (~done)
    cf=CellFinder(im1, pixelsize_aod, 'minContrast', minc) ;
    [x,y,radii,contrast,sharpness,correlation]=getCells(cf);
    numcells(aodselframe) = length(x) ;
    if ((numcells(aodselframe) > mincells) && (numcells(aodselframe) < maxcells))
        cells_x(1:numcells(aodselframe),aodselframe) = x ;
        cells_y(1:numcells(aodselframe),aodselframe) = y ;
        done = true ;
    else
        if (numcells(aodselframe)<mincells)
            minc = minc / (1.25+(rand-0.5)/5) ;
        else
            minc = minc * (1.25+(rand-0.5)/5) ;
        end ;
    end ;
end ;


% apply Gaussian masks around each cell in the reference frame
% make the mask that has Gaussians
gim1 = zeros(size(im1,1), size(im1,2)) ;
sigma = 10 ;
for ii=1:numcells(aodselframe)
    temp = zeros(size(im1,1), size(im1,2)) ;
    for jj=1:size(im1,1)
        for kk=1:size(im1,2)
            temp(jj,kk) = exp(-((kk-cells_x(ii,aodselframe))^2 + (jj-cells_y(ii,aodselframe))^2)/(2*sigma^2)) ;
        end ;
    end ;
    gim1 = max(gim1, temp) ;
end ;

% also make a mask with 1.5*SD for applying to the mirror frames before
% computing correlations
gim2 = zeros(size(im1,1), size(im1,2)) ;
for ii=1:numcells(aodselframe)
    temp = zeros(size(im1,1), size(im1,2)) ;
    for jj=1:size(im1,1)
        for kk=1:size(im1,2)
            temp(jj,kk) = exp(-((kk-cells_x(ii,aodselframe))^2 + (jj-cells_y(ii,aodselframe))^2)/(2*1.5*sigma^2)) ;
        end ;
    end ;
    gim2 = max(gim2, temp) ;
end ;

% apply mask to the reference frame
im1 = im1 .* gim1 ;

% find the match
maxcorrz = zeros(size(scdata_mirror,3),1) ;
maxcorr_x = zeros(size(scdata_mirror,3),1) ;
maxcorr_y = zeros(size(scdata_mirror,3),1) ;

% need to pick a section of the mirror frame if it is larger than the aod
% frame
if (~aodframeislarger)
        if (position(1) < 0)
            srccol = 1 ;
            effectivewidth = size(corr_data_aod,2)+position(1) ; 
            destcol = size(corr_data_aod,2)-effectivewidth+1 ;
        else
            srccol = position(1) ;
            effectivewidth = min(size(scdata_mirror,2) - srccol, size(corr_data_aod,2)) ;
            destcol = 1 ;
        end ;    
        if (position(2) < 0)
            srcrow = 1 ;
            effectiveheight = size(corr_data_aod,1)+position(2) ; 
            destrow = size(corr_data_aod,1)-effectiveheight+1 ;
        else
            srcrow = position(2) ;
            effectiveheight = min(size(scdata_mirror,1) - srcrow, size(corr_data_aod,1)) ;
            destrow = 1 ;
        end ;    
end ;

% if the aodref selection is not manual, then the framewise correlation
% between aod ref frame and all mirror frames is not calculated
% in this case, the middle of aod volume and middle of mirror volumes are assumed to be
% aligned
if (manualaodrefselection)
    for ii=1:size(scdata_mirror,3)

    %   get a frame from mirror stack 
        if (aodframeislarger)
            im2 = squeeze(scdata_mirror(:,:,ii)) ;
        else
            im2 = zeros(size(corr_data_aod,1), size(corr_data_aod,2))+min(corr_data_aod(:)) ;
            im2(destrow:size(corr_data_aod,1), destcol:size(corr_data_aod,2)) = squeeze(scdata_mirror(srcrow:srcrow+effectiveheight-1,...
                                                                                            srccol:srccol+effectivewidth-1, ii)) ;
        end ;
        im2 = im2 .* gim2 ;

    %   normalized xcorr
        xc = normxcorr2(im1-mean(im1(:)), im2-mean(im2(:))) ;

    %   locate the peak    
        [p q] = max(xc) ;
        [a b] = max(p) ;
        maxcorr_x(ii) = b-floor(size(xc,2)/2)-1 ;
        maxcorr_y(ii) = q(b)-floor(size(xc,1)/2)-1 ;
        maxcorrz(ii) = a ;
    end ;
else
        ii = round(size(scdata_mirror,3)/2) ;    
        
    %   get a frame from mirror stack 
        if (aodframeislarger)
            im2 = squeeze(scdata_mirror(:,:,ii)) ;
        else
            im2 = zeros(size(corr_data_aod,1), size(corr_data_aod,2))+min(corr_data_aod(:)) ;
            im2(destrow:size(corr_data_aod,1), destcol:size(corr_data_aod,2)) = squeeze(scdata_mirror(srcrow:srcrow+effectiveheight-1,...
                                                                                            srccol:srccol+effectivewidth-1, ii)) ;
        end ;
        im2 = im2 .* gim2 ;

    %   normalized xcorr
        xc = normxcorr2(im1-mean(im1(:)), im2-mean(im2(:))) ;

    %   locate the peak    
        [p q] = max(xc) ;
        [a b] = max(p) ;
        maxcorr_x(ii) = b-floor(size(xc,2)/2)-1 ;
        maxcorr_y(ii) = q(b)-floor(size(xc,1)/2)-1 ;
        maxcorrz(ii) = a ;
end ;

[foo matchingframe] = max(maxcorrz) ;
xoffset = maxcorr_x(matchingframe) + srccol ;
yoffset = maxcorr_y(matchingframe) + srcrow ;

zoffset = matchoutcomedisplay(corr_data_aod, scdata_mirror, scdata_mirror_ch2,...
                        srcrow, srccol, destrow, destcol, ...
                                                    effectiveheight, effectivewidth,...
                                                   aodselframe, matchingframe, aodframeislarger) ;





function [srcrow srccol destrow destcol effectivewidth effectiveheight] = getselrectoffsets(position, src_scanwidth, src_scanheight, dest_scanwidth, dest_scanheight)


position(1) = max(position(1),1) ;
position(2) = max(position(2),1) ;
position(3) = min(position(3)+position(1), src_scanwidth) ;
position(4) = min(position(4)+position(2), src_scanheight) ;
effectivewidth = position(3)-position(1) ;
effectiveheight = position(4)-position(2) ;

srccol = position(1) ;
srcrow = position(2) ;

destcol = floor((dest_scanwidth-effectivewidth)/2)+1 ;
destrow = floor((dest_scanheight-effectiveheight)/2)+1 ;


