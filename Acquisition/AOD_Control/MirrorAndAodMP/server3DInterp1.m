% get data from the client, execute interp3 and return the data back
% this function runs for ever as a server

buffersize = 10000 ;
portnumber = 4012 ;
if (isunix)
    if (ismac)
        server_shareddir = '/Volumes/scratch01/temp' ;
    else
        server_shareddir = '/mnt/scratch01/temp' ;
    end ;
else
    server_shareddir = 'v:\temp' ;
end ;

done = false ;
while (~done)
    
    % run the server, wait for the dimensions and sclae factors to arrive
    % from the client
    t=tcpip('0.0.0.0', portnumber, 'NetworkRole', 'server', 'InputBufferSize', buffersize, 'OutputBufferSize', buffersize);
    fopen(t);  % this will block until a connection is received. as soon as the client executes fopen, the connection is made
    disp('Connection made') ;    
    readasync(t) ;
    while(t.BytesAvailable ~= 1)
    end ;
    tmp=fread(t,1) ; % get a signal from client that data file is ready
    
    cbuf = sprintf('load %s/shareindata.mat', server_shareddir) ;
    eval(cbuf) ;
    disp('Data Received, Processing Started...') ;
    
    % build the function execution string
    paramnames = fieldnames(sin.inparams) ;
    numparams = length(paramnames) ;
    fname = strcat(sin.fName, '(') ;
    for ii=1:numparams
        fname = sprintf('%s%s%s', fname,'sin.inparams.',char(paramnames(ii))) ;
        if (ii ~= numparams)
            fname = strcat(fname, ',') ;
        end ;
    end ;
    fname = strcat(fname, ');') ;
    
    % build the string for the function's output
    outputlist = '[' ;
    outparamnames = fieldnames(sout.outparams) ;
    numoutparams = length(outparamnames) ;
    for ii=1:numoutparams
        outputlist = strcat(outputlist, outparamnames(ii)) ;
        outputlist = strcat(outputlist, ' ') ;
    end ;
    outputlist = strcat(outputlist, ']=') ;
    evalstring = strcat(char(outputlist), char(fname)) ;
    eval(evalstring) ;
    disp('Data Processing Complete') ;
    
    cbuf = sprintf('delete %s/shareoutdata.mat',server_shareddir) ;
    eval(cbuf) ;
    
    % form the command to save the output parameters
    fname = sprintf('save %s/shareoutdata.mat  ',server_shareddir)  ;
    
    outlist = '' ;
    for ii=1:numoutparams
        t2 = sprintf('%c%s', ' ', char(char(outparamnames(ii)))) ;
        outlist = strcat(char(outlist), t2) ;
    end ;
    evalstring = sprintf('%s%c%s', char(fname), ' ', char(outlist)) ;
    eval(evalstring) ;
    
    fwrite(t,1) ;
    disp('Data Sent') ;
    
    % close the connection
    fclose(t) ;
    
end ;