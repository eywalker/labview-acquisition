% align the volumes
% returns the x, y and z offsets in the mirror stack that registers mirror
% stack with the aod stack
% x & y offset is for the top-left corner of the rectangular area of effective width x effective height in the
% mirror stack corresponding to the aod stack
% aodframeislarger is true if aod stack has a larger size (more pixels in any of the dims of x-y plane) frames.
% aodfile is the full file name (including the path) of aod stack file
% mirrorfile is the full file name (including the path) of mirror stack file
% server_ip is the IP address of the server used to compute 3-D
% interpolation needed to equalize the dimensions of the AOD and mirror stacks
% server_shareddir is the directory that is on a shared volume that the
% server as well as this code can access. This shared dir is used for
% communication between the server and this code
function [xoffset effectivewidth yoffset effectiveheight zoffset aodframeislarger cancel] = Align(aodfile, mirrorfile, server_ip, server_shareddir)
% load AOD data
disp('Loading AOD Volume...') ;
%aodfile = sprintf('Data%s2013-01-23_15-29-46_%%d.h5', filesep) ;
%aodfile = sprintf('Data%s2013-01-23_15-29-46_%%d.h5', filesep) ;
[scdata_aod pixelsize_aod sectioncount_aod intervalz_aod] = ShowAOD2PData3(aodfile) ;
disp('AOD Volume Loaded...') ;

% for ii=1:size(scdata_aod,3)
%     h = scdata_aod(:,:,ii) ;
%     hist(h(:)) ;
%     pause ;
% end ;

% load mirror data
disp('Loading Mirror Volume...') ;
%mirrorfile=sprintf('Data%s130123_003p%%u.h5',filesep) ;

% specific for each experiment
lens=20;
magnification = 1.3;

[scdata_mirror scdata_mirror_ch2 pixelsize_mirror sectioncount_mirror intervalz_mirror] = ShowMirror2PData3(mirrorfile, pixelsize_aod, intervalz_aod, lens, magnification, server_ip, server_shareddir) ;
disp('Mirror Volume Loaded...') ;

% find shear in AOD stack
disp('Correcting AOD Volume for Shear...') ;
[corr_data_aod foo1 foo2] = FindShear(scdata_aod, true, false) ;
disp('AOD Volume is Shear Corrected...') ;

% find the x,y and z offsets that produces a match between AOD and mirror stacks
disp('Finding Volume Match...') ;
[xoffset effectivewidth yoffset effectiveheight zoffset aodframeislarger cancel] = FindMatch2(corr_data_aod, scdata_mirror, scdata_mirror_ch2,...
                                                                                            pixelsize_aod, ...
                                                                                            false, false, true, false) ;
disp('Volumes Matched') ;                                                                                        