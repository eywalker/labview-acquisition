% test client-server 3d interp functions
% run in 32 bit matlab
% assumes 64 bit matlab running

data = rand(400,400,100) ;


localoutdata = resample3Dimage(data,1,1,2) ;

outdata = client3DInterp1(single(data),1,1,2) ;

diffdata = localoutdata-outdata ;
max(diffdata(:))
min(diffdata(:))
