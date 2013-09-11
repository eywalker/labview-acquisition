% test the alignment function

% example where mirror frames are larger than aod frames
% aodfile = sprintf('Data%s2013-01-23_15-29-46_%%d.h5', filesep) ;
% mirrorfile=sprintf('Data%s130123_003p%%u.h5',filesep) ;

% example where aod frames are larger than mirror frames
aodfile = sprintf('Data%s2012-06-07_17-01-17_%%d.h5', filesep) ;
mirrorfile=sprintf('Data%s120607_006p%%u.h5',filesep) ;

server_ip = '128.249.80.146' ;
%server_ip = '10.21.19.108' ;
server_shareddir = 'v:\temp'
[xoffset effectivewidth yoffset effectiveheight zoffset aodframeislarger cancel] = Align(aodfile, mirrorfile, server_ip, server_shareddir);