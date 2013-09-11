% send data to a server, server performs the 3-d interpolation and returns the data back
% input and output data are single precision
function outdata = client3DInterp(indata, xscale, yscale, zscale, server_ip, server_shareddir)

buffersize = 10000 ;
portnumber = 4012 ;

% platform, mac or pc ?
ismac = false ;
if (filesep == '/')
    ismac = true ;
end ;

% convert to single
indata = single(indata) ;

% run the server, wait for the dimensions and sclae factors to arrive
% from the client
server_ip
t=tcpip(server_ip, portnumber, 'NetworkRole', 'client', 'InputBufferSize', buffersize, 'OutputBufferSize', buffersize);
fopen(t);  % this will block until a connection is received. as soon as the client executes fopen, the connection is made
disp('Connection made') ;    

% save the data in a file
if (ismac)
    eval(sprintf('delete %s/shareindata.mat', server_shareddir)) ;
else
    eval(sprintf('delete %s%sshareindata.mat', server_shareddir, '\')) ;
end ;

inparray = struct('indata', indata, 'xscale', xscale, 'yscale', yscale, 'zscale', zscale) ;
sin = struct('fName', 'resample3Dimage', 'inparams', inparray) ;
outparray = struct('outdata', []) ;
sout = struct('outparams', outparray) ;

if (ismac)
    eval(sprintf('save %s/shareindata.mat sin sout', server_shareddir)) ;
else
    eval(sprintf('save %s%sshareindata.mat sin sout', server_shareddir, '\')) ;
end ;

% send a message to server indicating data are ready
fwrite(t,1) ;
disp('Data Sent for Processing...') ;

% wait for a signal from server that output is ready
readasync(t) ; % get ready for data from the server
while (t.BytesAvailable ~= 1)
end ;
fread(t,1) ;

% read the output from the server
if (ismac)
    eval(sprintf('load %s/shareoutdata.mat', server_shareddir)) ;
else
    eval(sprintf('load %s%sshareoutdata.mat', server_shareddir, '\')) ;
end ;

disp('Processed Data Received') ;

% close the connection
fclose(t) ;