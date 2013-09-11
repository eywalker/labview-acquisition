% display aod based 2-photon volume
%1 pixel = 0.8 microns in x-y plane
%z step - 100/60 microns

function [scdata_aod pixelsize_aod sectioncount_aod intervalz_aod] = ShowAOD2PData3(filename)


tp_aod = AodVolumeReader(filename) ;
scdata_aod = double(tp_aod(:,:,:)) ;

sectioncount_aod = length(tp_aod.z);
intervalz_aod = (tp_aod.z(end) - tp_aod.z(1))/sectioncount_aod;
pixelsize_aod = (tp_aod.x(end) - tp_aod.x(1))/length(tp_aod.x); % assume square pixels

% imgmeanlum = [] ;
% imgstd = [] ;
% for ii=1:size(scdata_aod, 3)
%     imgmeanlum = [imgmeanlum; mean(reshape(scdata_aod(:,:,ii),[],1,1))] ;
%     imgstd = [imgstd; std(reshape(scdata_aod(:,:,ii),[],1,1))] ;
% end ;

for ii=1:size(scdata_aod,3)
    scdata_aod(:,:,ii) = scdata_aod(:,:,ii) - mean(reshape(scdata_aod(:,:,ii),[],1,1)) ;
    scdata_aod(:,:,ii) = scdata_aod(:,:,ii) / std(reshape(scdata_aod(:,:,ii),[],1,1)) ;
%     scdata_aod(:,:,ii) = scdata_aod(:,:,ii) - mean(scdata_aod(:)) ;
%     scdata_aod(:,:,ii) = scdata_aod(:,:,ii) / std(scdata_aod(:)) ;
end ;
