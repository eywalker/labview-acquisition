% display mirror based 2-photon volume (file produced by MPScan)
% run this script after running the ShowAOD2PData2.m
% assumes AOD stack is already loaded

%1 pixel = 0.63 microns in x-y plane
%z step - in the file getProperties(tp_mirror) -> intervalZ

function [scdata_mirror scdata_mirror_ch2 pixelsize_mirror sectioncount_mirror intervalz_mirror] = ShowMirror2PData3(filename, pixelsize_aod, intervalz_aod, lens, magnification, server_ip, server_shareddir)

%cbuf=sprintf('Data%s120607_006p%%u_mirror.h5',filesep) ;
%cbuf=sprintf('Data%s130123_003p%%u.h5',filesep) ;
tp_mirror = tpReader(filename) ;
data_mirror = struct(getImagingChannel(tp_mirror, 1)) ;
data_mirror = double(data_mirror.tpChannel(:,:,:)) ;

data_mirror_ch2 = struct(getImagingChannel(tp_mirror, 2)) ;
data_mirror_ch2 = double(data_mirror_ch2.tpChannel(:,:,:)) ;

prop = getProperties(tp_mirror);                   % get the properties of the stack
sectioncount_mirror = prop.sectionCount;           % # of slices
intervalz_mirror = abs(prop.intervalZ);                 % Z step size
pixelsize_mirror = 11000/512/magnification/lens;  % XY pixelsize in microns/pixel

% equalize the two stacks's z resolution
lateralscale = 1 ;
%data_mirror = resample3Dimage(data_mirror, lateralscale, lateralscale, intervalz_aod/intervalz_mirror) ;
%data_mirror_ch2 = resample3Dimage(data_mirror_ch2, lateralscale, lateralscale, intervalz_aod/intervalz_mirror) ;
data_mirror = client3DInterp1(data_mirror, lateralscale, lateralscale, intervalz_aod/intervalz_mirror, server_ip, server_shareddir) ;
data_mirror_ch2 = client3DInterp1(data_mirror_ch2, lateralscale, lateralscale, intervalz_aod/intervalz_mirror, server_ip, server_shareddir) ;

scalefactor = 0.85 ; % choosen by visual inspection
mirror_scale = (pixelsize_mirror/pixelsize_aod)*scalefactor ;


% rotate mirror stack for general orientation alignment between mirror and
% aod stacks
rotangle = -9 ; % about 10 deg for the test data

% test rotate one frame from the stack to estimate the matrix size after
% rotate
im = data_mirror(:,:,1) ;
im = imresize(im, mirror_scale) ;
[scr scc] = size(im) ;
im = rot90(im,-1) ;
im = fliplr(im) ;
im = imrotate(im, rotangle, 'bicubic', 'loose') ;

% setup the image from stack in the center of a larger zero filled dummy image prior to
% rotation. Then after rotation extract the central portion of the rotated
% image
sz = round(size(im)*1.5) ;
rs = sz(1) ;
cs = sz(2) ;
rc = floor(rs/2)+1 ;
cc = floor(cs/2)+1 ;
rbeg = rc - round(scc/2) ;
rend = rbeg + scc - 1 ;
cbeg = cc - round(scr/2) ;
cend = cbeg + scr - 1 ;

scdata_mirror = zeros(scc, scr, size(data_mirror,3)) ;
% put the mirror stack in the same general orientation as the aod stack
for ii=1:size(data_mirror,3)
    im = data_mirror(:,:,ii) ;
    im = imresize(im, mirror_scale) ;
    im = rot90(im,-1) ;
    im = fliplr(im) ;
    bim = zeros(rs,cs)+min(data_mirror(:)) ;
    bim(rbeg:rend, cbeg:cend) = im ;
    bim = imrotate(bim, rotangle, 'bicubic', 'crop') ;
    im = bim(rbeg:rend, cbeg:cend) ;
    scdata_mirror(:,:,ii) = im ;
end ;
clear data_mirror ;

scdata_mirror_ch2 = zeros(scc, scr, size(data_mirror_ch2,3)) ;
for ii=1:size(data_mirror_ch2,3)
    im = data_mirror_ch2(:,:,ii) ;
    im = imresize(im, mirror_scale) ;
    im = rot90(im,-1) ;
    im = fliplr(im) ;
    bim = zeros(rs,cs)+min(data_mirror_ch2(:)) ;
    bim(rbeg:rend, cbeg:cend) = im ;
    bim = imrotate(bim, rotangle, 'bicubic', 'crop') ;
    im = bim(rbeg:rend, cbeg:cend) ;
    scdata_mirror_ch2(:,:,ii) = im ;
end ;
clear data_mirror_ch2 ;

%scdata_mirror = data_mirror ;
%data_mirror = data_mirror - mean(data_mirror(:)) ;
for ii=1:size(scdata_mirror,3)
    scdata_mirror(:,:,ii) = scdata_mirror(:,:,ii) - mean(reshape(scdata_mirror(:,:,ii),[],1,1));
    scdata_mirror(:,:,ii) = scdata_mirror(:,:,ii)/std(reshape(scdata_mirror(:,:,ii),[],1,1)) ;
end ;

%scdata_mirror_ch2 = data_mirror_ch2 ;
%data_mirror_ch2 = data_mirror_ch2 - mean(data_mirror_ch2(:)) ;
for ii=1:size(scdata_mirror_ch2,3)
    scdata_mirror_ch2(:,:,ii) = scdata_mirror_ch2(:,:,ii) - mean(reshape(scdata_mirror_ch2(:,:,ii),[],1,1)) ;
    scdata_mirror_ch2(:,:,ii) = scdata_mirror_ch2(:,:,ii)/std(reshape(scdata_mirror_ch2(:,:,ii),[],1,1)) ;
end ;
