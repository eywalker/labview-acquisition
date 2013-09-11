function varargout = SegmenterDisplay(varargin)
% SEGMENTERDISPLAY MATLAB code for SegmenterDisplay.fig
%      SEGMENTERDISPLAY, by itself, creates a new SEGMENTERDISPLAY or raises the existing
%      singleton*.
%
%      H = SEGMENTERDISPLAY returns the handle to a new SEGMENTERDISPLAY or the handle to
%      the existing singleton*.
%
%      SEGMENTERDISPLAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEGMENTERDISPLAY.M with the given input arguments.
%
%      SEGMENTERDISPLAY('Property','Value',...) creates a new SEGMENTERDISPLAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SegmenterDisplay_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SegmenterDisplay_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SegmenterDisplay

% Last Modified by GUIDE v2.5 24-Jun-2013 16:15:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SegmenterDisplay_OpeningFcn, ...
                   'gui_OutputFcn',  @SegmenterDisplay_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT




% --- Executes just before SegmenterDisplay is made visible.
function SegmenterDisplay_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SegmenterDisplay (see VARARGIN)

% Choose default command line output for SegmenterDisplay
handles.output = hObject;

assert(nargin > 0, 'Needs a segmenter input');
handles.seg = varargin{1}
assert(strcmp(class(handles.seg),'aod.Segmenter') ~= 0, ...
    'Wrong data passed.  First argument should be a segmenter');

set(handles.planeSelector,'Max',length(handles.seg.z));
set(handles.planeSelector,'Value',1);
set(gcf,'KeyPressFcn',@keyPress);

plotPlane(handles)

% remove mean and normalize the aod stack
handles.scdata_aod = handles.seg.dat ;
for ii=1:size(handles.scdata_aod,3)
    handles.scdata_aod(:,:,ii) = handles.scdata_aod(:,:,ii) - mean(reshape(handles.scdata_aod(:,:,ii),[],1,1)) ;
    handles.scdata_aod(:,:,ii) = handles.scdata_aod(:,:,ii) / std(reshape(handles.scdata_aod(:,:,ii),[],1,1)) ;
end ;

% data and parameters of mirror stack
handles.scdata_mirror = [] ;
handles.scdata_mirror_ch2 = [] ;
handles.pixelsize_mirror = [] ;
handles.sectioncount_mirror = [] ;
handles.intervalz_mirror = [] ;

% post alignment offsets &  in x, y and z directions
handles.xoffset = 0 ;
handles.effectivewidth = [] ;
handles.yoffset = 0 ;
handles.effectiveheight = [] ;
handles.zoffset = 0 ;
handles.aodframeislarger = [] ;

% is alignment procedure done
handles.aligned = false ;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SegmenterDisplay wait for user response (see UIRESUME)
uiwait(handles.figure1);




function keyPress (hObject, eventdata)
    handles = guidata(hObject);
    index = round(get(handles.planeSelector,'Value'));
  
    if isfield(eventdata, 'Key') && strcmp(eventdata.Key,'uparrow') == 1
       index = index + 1;
    elseif isfield(eventdata, 'Key') && strcmp(eventdata.Key,'downarrow') == 1
        index = index - 1;
    end

    if index < 1
        index = 1;
    end
    if index > length(handles.seg.z)   %#ok<PROP>
        index = length(handles.seg.z); %#ok<PROP>
    end

    set(handles.planeSelector,'Value',index);
    plotPlane(handles)

    
    
    
    
% --- Executes when the image plane is clicked.
function cellClicked(hObject, eventdata)

handles = guidata(hObject);

cp = get(handles.plane,'CurrentPoint');
coordinate = cp(1,1:2);
coordinate(3) = get(handles.planeSelector,'Value');
coordinate = round(coordinate);

% Get the segmenter and add this click to it
seg = handles.seg;
seg = addClick(seg, seg.x(coordinate(1)), seg.y(coordinate(2)), seg.z(coordinate(3)));
handles.seg = seg;
guidata(hObject, handles);

set(gcf,'Name',sprintf('%u cells clicked', seg.numCells));
plotPlane(handles);




function plotPlane(handles)

% plane in the aod volume
index = round(get(handles.planeSelector,'Value'));

% corresponding plane in the mirror volume is only availabe after alignment
if (handles.aligned)
    mirrorindex = index + handles.zoffset ;
    if (mirrorindex > size(handles.scdata_mirror))
        mirrorindex = nan ;
    end ;
end ;

% get the aod frame that needs to be displayed along with any selected
% points in that frame
im1 = handles.seg.dat(:,:,index)';
mask = generateMask(handles.seg,4,index)';
im1 = (im1 - min(im1(:))) / range(im1(:));
im1 = repmat(im1,[1 1 3]);

% use half the blue channel and half the mask value (mask represents the
% selected points), this is a rgb image
im1(:,:,3) = im1(:,:,3) / 2 + mask / 2;

% stretch contrast and bring the values in 0 - 255 range
im1 = (im1 - min(im1(:)))*255 / range(im1(:));

% determine the scaling needed to fit the aod image in the window while
% keeping the aspect of the original acquired image
axes(handles.plane) ; 
oldunits = get(handles.plane, 'Units') ;
set(handles.plane, 'Units', 'pixels') ;
p1 = get(handles.plane, 'Position') ;
set(handles.plane, 'Units', oldunits) ;
sr1 = min(p1(4)/size(im1,1), p1(3)/size(im1,2)) ;

% if alignment has been done, determine what is the smaller scale factor
if (handles.aligned)
    axes(handles.mirrorframe) ; 
    im2 = handles.scdata_mirror(1) ; % use the first frame for scale calculations
    oldunits = get(handles.mirrorframe, 'Units') ;
	set(handles.mirrorframe, 'Units', 'pixels') ;
	p2 = get(handles.mirrorframe, 'Position') ;
	set(handles.mirrorframe, 'Units', oldunits) ;
 
% % resize the image proprtionally to fit the destination rectangle, get
% % scale factor
    sr2 = min(p2(4)/size(im2,1), p2(3)/size(im2,2)) ;
    
%   pick the smaller scaling factor of the two
    sr = min(sr1, sr2) ;
else
    sr = sr1 ;
end ;

% resize the aod image and center it for drawing
t1 = imresize(im1, sr) ;
im1 = zeros(p1(4), p1(3), size(im1,3)) ;
drow = floor((p1(4)/2)-(size(t1,1)/2))+1 ;
dcol = floor((p1(3)/2)-(size(t1,2)/2))+1 ;
im1(drow:drow+size(t1,1)-1, dcol:dcol+size(t1,2)-1, :) = t1 ;

% draw the rescaled aod image
axes(handles.plane) ;
image(im1) ;
axis off ;

% need to draw the mirror frame based on what has been done with the mirror
% volume
if (~isempty(handles.scdata))
    if (handles.aligned)
        if (mirrorindex ~= nan)            
%           display the red and green channels mixed together            
            mixproportion = get(handles.channelMixing, 'Value') ;
            cm1 = [[0:1:255]'*0 ([0:1:255]'/255)*min(mixproportion*2,1) [0:1:255]'*0] ;
            cm2 = [([0:1:255]'/255)*min((1-mixproportion)*2,1) [0:1:255]'*0 [0:1:255]'*0] ;
            
%           convert to rgb, f1 is green channel only and f2 is red channel only
            f1rgb = ind2rgb(handles.scdata_mirror(mirrorindex), cm1) ;
            f2rgb = ind2rgb(handles.scdata_mirror_ch2(mirrorindex), cm2) ;
            
%           sum them up and clip
            f1f2 = f1rgb + f2rgb ;
            f1f2 = min(f1f2,1) ;
            f1f2 = max(f1f2,0) ;

            t2 = imresize(f1f2, sr) ;
        else
            t2 = imresize(zeros(size(im2,1), size(im2,2), 3), sr) ;
        end ;
    else
            t2 = imresize(zeros(size(im2,1), size(im2,2), 3)+255, sr) ;
    end ;
else
            t2 = imresize(zeros(size(im2,1), size(im2,2), 3)+128, sr) ;
end ;  

im2 = zeros(p2(4), p2(3)) ;
drow = floor((p2(4)/2)-(size(t2,1)/2))+1 ;
dcol = floor((p2(3)/2)-(size(t2,2)/2))+1 ;
im2(drow:drow+size(t2,1)-1, dcol:dcol+size(t2,2)-1, :) = t2 ;

axes(handles.mirrorframe) ;
image(im2) ;
axis off ;

set(h,'ButtonDownFcn', @cellClicked);

colormap gray ;




% --- Outputs from this function are returned to the command line.
function varargout = SegmenterDisplay_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.seg;
delete(handles.figure1);




% --- Executes on slider movement.
function planeSelector_Callback(hObject, eventdata, handles)
% hObject    handle to planeSelector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

plotPlane(handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider




% --- Executes during object creation, after setting all properties.
function planeSelector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to planeSelector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes on button press in clearPoints.
function clearPoints_Callback(hObject, eventdata, handles)
% hObject    handle to clearPoints (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles




% --- Executes on button press in acceptPoints.
function acceptPoints_Callback(hObject, eventdata, handles)
% hObject    handle to acceptPoints (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uiresume(handles.figure1)



% --- Executes on button press in showMask.
function showMask_Callback(hObject, eventdata, handles)
% hObject    handle to showMask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in hideMask.
function hideMask_Callback(hObject, eventdata, handles)
% hObject    handle to hideMask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on slider movement.
function channelMixing_Callback(hObject, eventdata, handles)
% hObject    handle to channelMixing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function channelMixing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to channelMixing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in loadMirrorVolume.
function loadMirrorVolume_Callback(hObject, eventdata, handles)
% hObject    handle to loadMirrorVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mirrorfile = uigetfile ;
[handles.scdata_mirror handles.scdata_mirror_ch2 handles.pixelsize_mirror handles.sectioncount_mirror handles.intervalz_mirror] = ...
                                                    ShowMirror2PData3(mirrorfile, mean(diff(handles.seg.x)), ...
                                                    mean(diff(handles.seg.z)), handles.seg.lens, handles.seg.magnification, ...
                                                    handles.seg.ip, handles.seg.sharedfolder) ;
guidata(hObject, handles);
plotPlane(handles) ;


% --- Executes on button press in autoAlign.
function autoAlign_Callback(hObject, eventdata, handles)
% hObject    handle to autoAlign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% find and correct shear in AOD stack
[handles.scdata_aod foo1 foo2] = FindShear(handles.scdata_aod, true, false) ;

% find the x,y and z offsets that produces a match between AOD and mirror stacks
[handles.xoffset handles.effectivewidth handles.yoffset handles.effectiveheight handles.zoffset handles.aodframeislarger] = FindMatch2(handles.scdata_aod, handles.scdata_mirror, ...
                                                                                            handles.scdata_mirror_ch2,...
                                                                                            handles.pixelsize_aod, false, false, true, false) ;

guidata(hObject, handles);
plotPlane(handles) ;





