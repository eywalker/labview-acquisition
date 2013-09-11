%by Dr. Rex Cheung
%cheung.r100@gmail.com
%This program resamples (i.e. coarsens or refines) a picture and returns the x, y, z 
%componenets and the resampled image, then plot the image for
%visualization. This is useful for multi-grid image registration to improve
%accuracy and efficiency. Note in the example with phantom, users can see
%the more pixelated figure with the coarser grid.

function resampleImage=resample3Dimage(image, factorx, factory, factorz)
%check dimension is 3D
if (ndims(image)<3)
    error('image needs to be a 3D image');
end

%size each dimension of the image i.e. find the number of rows, number of
%columns and number of pages
[nrow ncol npage]=size(image);

%Use the above results to create the old grid
%IMPORTANT REMINDER NOTE: for meshgrid implementation in Matlab meshgrid(a,b,c) means
%there are a columns, b rows and c pages. Therefore put ncol in a position,
%and nrow in b position, and npage as expected in the c position

%create the original grid size
[x,y,z] = meshgrid(single(1:ncol),single(1:nrow),single(1:npage));

%create the new grid for resampling of factor of 2, in this case the grid
%is coarser than the original grid. It may be useful for initial
%registrations to save time, also allows pattern registration as well.
[xi,yi,zi] = meshgrid(single(1:factorx:ncol), single(1:factory:nrow), single(1:factorz:npage));

%interpolate the values on the new grid using matlab interp3
resampleImage = interp3(x,y,z,single(image),xi,yi,zi); 
