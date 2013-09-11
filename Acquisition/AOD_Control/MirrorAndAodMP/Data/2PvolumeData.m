%% get MPScan stack info

% need the inputs:
% magnification
% lens

% for 2013-01-09
lens=20;
magnification = 1.7;
mpscanfilename ='130109_004p%u.h5';

tp = tpReader(mpscanfilename);
prop = getProperties(tp);                   % get the properties of the stack
sectionCount = prop.sectionCount;           % # of slices
intervalZ = prop.intervalZ;                 % Z step size
pixelPitch = 11000/512/magnification/lens;  % XY pixelsize in microns/pixel

%% get AOD stack info

% for 2013-01-09
AODfilename = '2013-01-09_13-57-57_%d.h5';

data = aodReader(AODfilename,'Volume');
aodsectionCount = length(data.z);
aodintervalZ = (data.z(end) - data.z(1))/aodsectionCount;
aodXpixelPitch = (data.x(end) - data.x(1))/length(data.x);
aodYpixelPitch = (data.y(end) - data.y(1))/length(data.y);

%% more datasets

lens=20;
magnification = 1.3;
mpscanfilename = '130123_003p%u.h5';
AODfilename = '2013-01-23_15-29-46_%d.h5';

lens=20;
magnification = 1.7;
mpscanfilename = '130123_004p%u.h5';
AODfilename = '2013-01-23_16-28-55_%d.h5';

lens=20;
magnification = 1.7;
mpscanfilename = '130123_005p%u.h5';
AODfilename = '2013-01-23_17-26-22_%d.h5';
