% find shear in aod stack, the shear found by this script is in x-y
% dimension
function [corr_data_aod shear_rowfitparams shear_colfitparams] = FindShear(data_aod, automeasure, debug)

%automeasure = true ;
%debug = false ;

maxz = size(data_aod,3) ;

mindata = prctile(data_aod(:),1) ;
maxdata = prctile(data_aod(:),99) ;
scdata_aod = (data_aod - mindata)*253/(maxdata-mindata) ;
scdata_aod = max(scdata_aod, 2) ;
scdata_aod = min(scdata_aod,253) ;

% spatial filter for both aod and mirror frames
[f1,f2] = freqspace(21,'meshgrid');
Hd = ones(21);
r = sqrt(f1.^2 + f2.^2);
Hd((r<0.1) | (r>0.3)) = 0;
win = fspecial('gaussian',21,2);
win = win ./ max(win(:));  % Make the maximum window value be 1.
h = fwind2(Hd,win);
for ii=1:size(scdata_aod,3)
    scdata_aod(:,:,ii) = filter2(h, squeeze(scdata_aod(:,:,ii)), 'same') ;
end ;

magnification = 50 ;
stepsize = 1 ;
shear_r = zeros(maxz,1) ;
shear_c = zeros(maxz,1) ;

if (automeasure)    
    aodselframe = 1 ;
    for ii=1+stepsize:maxz-stepsize
        im1 = squeeze(scdata_aod(:,:,ii-stepsize)) ;
        im2 = squeeze(scdata_aod(:,:,ii+stepsize)) ;
        l1c = interp(sum(im1),magnification) ;
        l1r = interp(sum(im1'),magnification) ;
        l2c = interp(sum(im2),magnification) ;
        l2r = interp(sum(im2'),magnification) ;  

        c = normxcorr2(l1c-mean(l1c),l2c-mean(l2c)) ;
        r = normxcorr2(l1r-mean(l1r),l2r-mean(l2r)) ;
        
        [p q] = max(c) ;
        shear_c(ii) = q - length(l1c) ;
        [p q] = max(r) ;
        shear_r(ii) = q - length(l1r) ;
    end ;    
else
    cm = [[0:1/255:1]' [0:1/255:1]' [0:1/255:1]'] ;
    cm(1,:) = [0 0 1] ;
    cm(252,:) = [1 0 0] ;
    colormap(cm) ;

    % % aod montage
    montage_frames = ones(size(scdata_aod,1), size(scdata_aod,2), 1, size(scdata_aod,3)+1) ;
    for ii=1:size(scdata_aod,3)
        montage_frames(:,:,1,ii) = scdata_aod(:,:,ii) ;    
    end ;

    montage_rows = 6 ;
    montage_cols = ceil(size(scdata_aod,3)/montage_rows) ;
    figure(4) ;
    colormap(cm) ;
    montage(montage_frames(:,:,:,1:size(scdata_aod,3)), cm, 'Size', [montage_rows montage_cols]) ;

    % pick a frame with a clear image of a landmark that exists in all the
    % frames
    % select aod frame
    [x y] = ginput(1) ;
    aodselframe_col = floor(x/size(scdata_aod,2))+1 ;
    aodselframe_row = floor(y/size(scdata_aod,1))+1 ;
    aodselframe = (aodselframe_row-1)*montage_cols+aodselframe_col ;

    % compute shear manually, get center and size of an object that exists in
    % all the frames
    figure(6) ;
    colormap(cm) ;
    landmarks = zeros(maxz,2) ;
    imagesc(squeeze(scdata_aod(:,:,aodselframe))) ;
    truesize ;
    landmarksize = ginput(4) ; % get the rough size of the object, first two clicks for horiz and next two for vert
    [landmark_x landmark_y] = ginput(1) ; % get the center of the object
    landmarks(aodselframe,1:2) = [landmark_x landmark_y] ;

    landmarks(aodselframe+1:maxz,:) = landmarks(aodselframe+1:maxz,:)*0 ;
    sscale = 1.5 ;
    for ii=aodselframe:stepsize:maxz-stepsize

        cr_lo = landmarks(ii,2) ;
        cc_lo = landmarks(ii,1) ;
        cr_hi = landmarks(ii,2) ;
        cc_hi = landmarks(ii,1) ;
        lm_rsize = abs(landmarksize(3,2) - landmarksize(4,2)) ;
        lm_csize = abs(landmarksize(1,1) - landmarksize(2,1)) ;

        rbeg = cr_lo - sscale*lm_rsize ;
        rbeg = round(max(1,rbeg)) ;
        rend = cr_hi + sscale*lm_rsize ;
        rend = round(min(size(scdata_aod,1), rend)) ;
        cbeg = cc_lo - sscale*lm_csize ;
        cbeg = round(max(1,cbeg)) ;
        cend = cc_hi + sscale*lm_csize ;
        cend = round(min(size(scdata_aod,2), cend)) ;

        im1 = squeeze(scdata_aod(rbeg:rend,cbeg:cend,ii)) ;
        im1 = (255-im1) ;
        im1 = im1*255/prctile(im1(:),99)-prctile(im1(:),1) ;
        im1 = min(im1, 253) ;
        im1 = max(im1, 2) ;

        im2 = squeeze(scdata_aod(rbeg:rend,cbeg:cend,ii+stepsize)) ;
        im2 = (255-im2) ;
        im2 = im2*255/prctile(im2(:),99)-prctile(im2(:),1) ;
        im2 = min(im2, 253) ;
        im2 = max(im2, 2) ;    


        % gaussian centered around landmark center
        gsd = 1.5*max(lm_csize, lm_rsize) ;
        g1 = zeros(size(im1,1), size(im1,2)) ;

        for jj=1:size(im1,1)
            for kk=1:size(im1,2)
                rsquare = (kk-landmarks(ii, 1)+cbeg).^2+(jj-landmarks(ii, 2)+rbeg).^2 ;           
                g1(jj,kk) = exp(-rsquare/gsd^2) ;
            end ;
        end ;

        im1 = im1 .* g1 ;
        im2 = im2 .* g1 ;


        im1 = (im1>prctile(im1(:),95))*255 ;
        im2 = (im2>prctile(im2(:),95))*255 ;

        if (debug)
            figure(7) ;
            colormap(cm) ;
            imagesc(im1) ;
            figure(8) ;
            colormap(cm) ;
            imagesc(im2) ;
            figure(9) ;
        end ;

        l1c = interp(sum(im1),magnification) ;
        l1r = interp(sum(im1'),magnification) ;
        l2c = interp(sum(im2),magnification) ;
        l2r = interp(sum(im2'),magnification) ;  

        shear_c(ii) = centroid(l2c) - centroid(l1c) ;

        if (debug)
            figure(5);
            subplot(2,1,1) ;
            plot(l1c) ;
            subplot(2,1,2) ;
            plot(l2c) ;
        end ;

        shear_r(ii) = centroid(l2r) - centroid(l1r) ;

        se = translate(strel(1), -round([shear_r(ii) shear_c(ii)]/magnification));


        if (debug)
            im4 = imdilate(im2,se);
            figure(10) ;
            colormap(cm) ;
            imagesc(im4) ;
            cbuf = sprintf('Frame number = %d', ii) ;
            disp(cbuf) ;
        end ;

    %   make the shifted object in frame ii+1 as the new landmark
        landmarks(ii+stepsize,1) = landmarks(ii,1)+(shear_c(ii)/magnification) ;
        landmarks(ii+stepsize,2) = landmarks(ii,2)+(shear_r(ii)/magnification) ;

    end ;
end

% fit the cumulative shears
shear_rowfitparams = polyfit([0:1:maxz-aodselframe]', cumsum(shear_r(aodselframe:maxz))/magnification, 1) ;
shear_colfitparams = polyfit([0:1:maxz-aodselframe]', cumsum(shear_c(aodselframe:maxz))/magnification, 1) ;

% correct the original data stack, assumes that the shearing is uniform
% for the entire range of z 
maxshear_r = abs((shear_rowfitparams(1)*maxz) + shear_rowfitparams(2)) ;
maxshear_c = abs((shear_colfitparams(1)*maxz) + shear_colfitparams(2)) ;

corr_data_aod = zeros(size(data_aod,1)+round(2*maxshear_r), size(data_aod,2)+round(2*maxshear_c), maxz)+min(data_aod(:)) ;

% positive shear means the next frame shifted down and to the right
for ii=1:maxz
    rs = round((shear_rowfitparams(1)*ii) + shear_rowfitparams(2)) ;
    cs = round((shear_colfitparams(1)*ii) + shear_colfitparams(2)) ;
    rcent = round(size(corr_data_aod,1)/2) ;
    ccent = round(size(corr_data_aod,2)/2) ;
    
    drowbeg = rcent - round(size(scdata_aod,1)/2) - rs ;
    drowbeg = max(drowbeg,1) ;
    drowend = drowbeg + size(scdata_aod,1) - 1 ;
    dcolbeg = ccent - round(size(scdata_aod,2)/2) - cs ;
    dcolbeg = max(dcolbeg,1) ;
    dcolend = dcolbeg + size(scdata_aod,2) - 1 ;
    
    corr_data_aod(drowbeg:drowend, dcolbeg:dcolend, ii) = data_aod(:,:,ii) ;
    
    if (debug)
        figure(1) ;
        colormap(cm) ;
        imagesc(squeeze(corr_data_aod(:,:,ii))) ;
        pause ;
    end ;
end ;


    
    