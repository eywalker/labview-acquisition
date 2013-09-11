function varargout = roughalignment(varargin)
% ROUGHALIGNMENT MATLAB code for roughalignment.fig
%      ROUGHALIGNMENT, by itself, creates a new ROUGHALIGNMENT or raises the existing
%      singleton*.
%
%      H = ROUGHALIGNMENT returns the handle to a new ROUGHALIGNMENT or the handle to
%      the existing singleton*.
%
%      ROUGHALIGNMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROUGHALIGNMENT.M with the given input arguments.
%
%      ROUGHALIGNMENT('Property','Value',...) creates a new ROUGHALIGNMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before roughalignment_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to roughalignment_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help roughalignment

% Last Modified by GUIDE v2.5 13-Aug-2013 12:06:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @roughalignment_OpeningFcn, ...
                   'gui_OutputFcn',  @roughalignment_OutputFcn, ...
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






% --- Executes just before roughalignment is made visible.
function roughalignment_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to roughalignment (see VARARGIN)
handles.varargin = varargin ;

global position ;
global aod_stack ;
global mirror_stack_ch1 ;
global mirror_stack_ch2 ;
global aod_prctile_lo aod_prctile_hi ;
global mirror_prctile_lo mirror_prctile_hi ;
global cancel ;
global sr ;

position = [0 0 0 0] ;
aod_stack = cell2mat(handles.varargin(1)) ;
mirror_stack_ch1 = cell2mat(handles.varargin(2)) ;
mirror_stack_ch2 = cell2mat(handles.varargin(3)) ;
aod_prctile_lo = str2num(get(handles.aod_prctile_lo, 'String')) ;
aod_prctile_hi = str2num(get(handles.aod_prctile_hi, 'String')) ;
mirror_prctile_lo = str2num(get(handles.mirror_prctile_lo, 'String')) ;
mirror_prctile_hi = str2num(get(handles.mirror_prctile_hi, 'String')) ;
cancel = false ;

% Choose default command line output for roughalignment
handles.output = hObject;

handles.aodselframe = round(size(aod_stack,3)/2) ; 
handles.mirrorselframe = round(size(mirror_stack_ch1,3)/2) ;

handles.aod_image = squeeze(aod_stack(:,:,handles.aodselframe)) ;
handles.mirror_image_ch1 = squeeze(mirror_stack_ch1(:,:,handles.mirrorselframe)) ;
handles.mirror_image_ch2 = squeeze(mirror_stack_ch2(:,:,handles.mirrorselframe)) ;

% scaling
sr = 1 ;

% ROI handle
handles.h = 0 ;
handles.id = 0 ;

handles.roi = true ;

% Update handles structure
guidata(hObject, handles);

draw(hObject) ;

% UIWAIT makes roughalignment wait for user response (see UIRESUME)
uiwait(handles.figure1);





% draw the images
function draw(hObject)

global sr ;

% disable the select button
handles = guidata(hObject) ;   
set(handles.select, 'Enable', 'Off') ;

scale_aod_frame(hObject) ;
scale_mirror_frame(hObject) ;

handles = guidata(hObject) ;   

% frames to display
im1 = handles.aod_image ;
oldunits = get(handles.aodframe, 'Units') ;
set(handles.aodframe, 'Units', 'pixels') ;
p1 = get(handles.aodframe, 'Position') ;
set(handles.aodframe, 'Units', oldunits) ;

% resize the image proprtionally to fit the destination rectangle, get
% scale factor
sr1 = min(p1(4)/size(im1,1), p1(3)/size(im1,2)) ;

% same for frame

im2 = handles.mirror_image_ch1 ;
oldunits = get(handles.mirrorframe, 'Units') ;
set(handles.mirrorframe, 'Units', 'pixels') ;
p2 = get(handles.mirrorframe, 'Position') ;
set(handles.mirrorframe, 'Units', oldunits) ;

% resize the image proprtionally to fit the destination rectangle, get
% scale factor
sr2 = min(p2(4)/size(im2,1), p2(3)/size(im2,2)) ;

% pick the smaller scaling factor of the two
sr = min(sr1, sr2) ;

t1 = imresize(im1, sr) ;
t2 = imresize(im2, sr) ;

im1 = zeros(p1(4), p1(3)) ;
drow = floor((p1(4)/2)-(size(t1,1)/2))+1 ;
dcol = floor((p1(3)/2)-(size(t1,2)/2))+1 ;
im1(drow:drow+size(t1,1)-1, dcol:dcol+size(t1,2)-1) = t1 ;

im2 = zeros(p2(4), p2(3)) ;
drow = floor((p2(4)/2)-(size(t2,1)/2))+1 ;
dcol = floor((p2(3)/2)-(size(t2,2)/2))+1 ;
im2(drow:drow+size(t2,1)-1, dcol:dcol+size(t2,2)-1) = t2 ;

% colormap for both images
cm = [[0:1/255:1]' [0:1/255:1]' [0:1/255:1]'] ;
%cm(1,:) = [0 0 1] ;
cm(253,:) = [1 0 0] ;

% show the selected frames and position a rectangle the size of mirror
% frame on the aod frame for rough alignment
axes(handles.aodframe) ; 
colormap(cm) ;
image(im1) ;
axis off ;

axes(handles.mirrorframe) ; 
colormap(cm) ;
image(im2) ;
axis off ;

set(handles.select, 'Enable', 'On') ;

guidata(hObject, handles) ;





% position the window in the appropriate rectangle 
function getwindow(hObject)

global position ;
global sr ;

handles = guidata(hObject) ;

aodframeislarger = cell2mat(handles.varargin(3)) ;

if (aodframeislarger)
    set(handles.title, 'String', 'Position the Outline Rectangle to Roughly Overlap with the Mirror Frame') ;
    axes(handles.aodframe) ; 
    if (sum(position) == 0)
        position = [0 0 round(size(handles.mirror_image_ch1,2)*sr) round(size(handles.mirror_image_ch1,1)*sr)] ;
    end ;
    handles.h = imrect(handles.aodframe, position);
else
    set(handles.title, 'String', 'Position the Outline Rectangle to Roughly Overlap with the AOD Frame') ;
    axes(handles.mirrorframe) ; 
    if (sum(position) == 0)
        position = [0 0 round(size(handles.aod_image,2)*sr) round(size(handles.aod_image,1)*sr)] ;
    end ;
    handles.h = imrect(handles.mirrorframe, position);
end ;
handles.id = addNewPositionCallback(handles.h, @updateposition) ;

guidata(hObject, handles) ;
%position = wait(h) ;        




function updateposition(p)

global position ;

position = p ;




% --- Outputs from this function are returned to the command line.
function varargout = roughalignment_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;
global position ;
global aod_stack ;
global mirror_stack_ch1 ;
global mirror_stack_ch2 ;
global aod_prctile_lo aod_prctile_hi ;
global mirror_prctile_lo mirror_prctile_hi ;
global cancel ;
global sr ;

scale_aod_stack(aod_stack, aod_prctile_lo, aod_prctile_hi) ;
scale_mirror_stack(mirror_stack_ch1, mirror_stack_ch2, mirror_prctile_lo, mirror_prctile_hi) ;

%rescale the width and height
position(3) = round(position(3)/sr) ;
position(4) = round(position(4)/sr) ;

varargout{1} = aod_stack ; % scaled stacks are returned
varargout{2} = mirror_stack_ch1 ;
varargout{3} = mirror_stack_ch2 ;
varargout{4} = position ;
varargout{5} = cancel ;





% --- Executes on button press in OK.
function OK_Callback(hObject, eventdata, handles)
% hObject    handle to OK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cancel ;

cancel = false ;
close ;



function aod_prctile_lo_Callback(hObject, eventdata, handles)
% hObject    handle to aod_prctile_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aod_prctile_lo as text
%        str2double(get(hObject,'String')) returns contents of aod_prctile_lo as a double
global aod_prctile_lo ;

aod_prctile_lo = str2num(get(handles.aod_prctile_lo, 'String')) ;
draw(hObject) ;


% --- Executes during object creation, after setting all properties.
function aod_prctile_lo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aod_prctile_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function aod_prctile_hi_Callback(hObject, eventdata, handles)
% hObject    handle to aod_prctile_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aod_prctile_hi as text
%        str2double(get(hObject,'String')) returns contents of aod_prctile_hi as a double
global aod_prctile_hi ;

aod_prctile_hi = str2num(get(handles.aod_prctile_hi, 'String')) ;
draw(hObject) ;


% --- Executes during object creation, after setting all properties.
function aod_prctile_hi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aod_prctile_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function mirror_prctile_lo_Callback(hObject, eventdata, handles)
% hObject    handle to mirror_prctile_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mirror_prctile_lo as text
%        str2double(get(hObject,'String')) returns contents of mirror_prctile_lo as a double
global mirror_prctile_lo ;

mirror_prctile_lo = str2num(get(handles.mirror_prctile_lo, 'String')) ;
draw(hObject) ;


% --- Executes during object creation, after setting all properties.
function mirror_prctile_lo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mirror_prctile_lo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function mirror_prctile_hi_Callback(hObject, eventdata, handles)
% hObject    handle to mirror_prctile_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mirror_prctile_hi as text
%        str2double(get(hObject,'String')) returns contents of mirror_prctile_hi as a double
global mirror_prctile_hi ;

mirror_prctile_hi = str2num(get(handles.mirror_prctile_hi, 'String')) ;
draw(hObject) ;


% --- Executes during object creation, after setting all properties.
function mirror_prctile_hi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mirror_prctile_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function scale_aod_frame(hObject)

global aod_stack ;

handles = guidata(hObject) ;

mindata = prctile(aod_stack(:),str2num(get(handles.aod_prctile_lo, 'String'))) ;
maxdata = prctile(aod_stack(:),str2num(get(handles.aod_prctile_hi, 'String'))) ;
handles.aod_image = (squeeze(aod_stack(:,:,handles.aodselframe)) - mindata)*253/(maxdata-mindata) ;
handles.aod_image = max(handles.aod_image, 2) ;
handles.aod_image = min(handles.aod_image,253) ;

% Update handles structure
guidata(hObject, handles);




function scale_aod_stack(corr_data_aod, prctile_lo, prctile_hi)

global aod_stack ;

mindata = prctile(corr_data_aod(:),prctile_lo) ;
maxdata = prctile(corr_data_aod(:),prctile_hi) ;
aod_stack = (corr_data_aod - mindata)*253/(maxdata-mindata) ;
aod_stack = max(aod_stack, 2) ;
aod_stack = min(aod_stack,253) ;





function scale_mirror_frame(hObject)

global mirror_stack_ch1 ;
global mirror_stack_ch2 ;

handles = guidata(hObject) ;

% rescale
mindata = prctile(mirror_stack_ch1(:),str2num(get(handles.mirror_prctile_lo, 'String'))) ;
maxdata = prctile(mirror_stack_ch1(:),str2num(get(handles.mirror_prctile_hi, 'String'))) ;
handles.mirror_image_ch1 = (squeeze(mirror_stack_ch1(:,:,handles.mirrorselframe)) - mindata)*253/(maxdata-mindata) ;
handles.mirror_image_ch1 = max(handles.mirror_image_ch1, 2) ;
handles.mirror_image_ch1 = min(handles.mirror_image_ch1,253) ;

mindata = prctile(mirror_stack_ch2(:),str2num(get(handles.mirror_prctile_lo, 'String'))) ;
maxdata = prctile(mirror_stack_ch2(:),str2num(get(handles.mirror_prctile_hi, 'String'))) ;
handles.mirror_image_ch2 = (squeeze(mirror_stack_ch2(:,:,handles.mirrorselframe)) - mindata)*253/(maxdata-mindata) ;
handles.mirror_image_ch2 = max(handles.mirror_image_ch2, 2) ;
handles.mirror_image_ch2 = min(handles.mirror_image_ch2,253) ;

guidata(hObject, handles);





function scale_mirror_stack(scdata_mirror, scdata_mirror_ch2, prctile_lo, prctile_hi)

global mirror_stack_ch1 ;
global mirror_stack_ch2 ;

% rescale
mindata = prctile(scdata_mirror(:),prctile_lo) ;
maxdata = prctile(scdata_mirror(:),prctile_hi) ;
mirror_stack_ch1 = (scdata_mirror - mindata)*253/(maxdata-mindata) ;
mirror_stack_ch1 = max(mirror_stack_ch1, 2) ;
mirror_stack_ch1 = min(mirror_stack_ch1,253) ;

mindata = prctile(scdata_mirror_ch2(:),prctile_lo) ;
maxdata = prctile(scdata_mirror_ch2(:),prctile_hi) ;
mirror_stack_ch2 = (scdata_mirror_ch2 - mindata)*253/(maxdata-mindata) ;
mirror_stack_ch2 = max(mirror_stack_ch2, 2) ;
mirror_stack_ch2 = min(mirror_stack_ch2,253) ;




% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
%varargout{1} = handles.output;

global cancel ;

cancel = true ;
close ;




% --- Executes on button press in select.
function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global position ;

handles.roi = ~handles.roi ;
guidata(hObject, handles) ;
if (handles.roi)
    position = getPosition(handles.h) ;
    removeNewPositionCallback(handles.h, handles.id) ;
    delete(handles.h) ;
    set(handles.select, 'String', 'Select') ;
    enable_scaling(hObject, true) ;
else
    enable_scaling(hObject, false) ;
    set(handles.select, 'String', 'Deselect') ;
    getwindow(hObject) ;
end ;






% enable/disable intensity scaling 
function enable_scaling(hObject, enable)

handles = guidata(hObject) ;

if (enable)
    set(handles.aod_prctile_lo, 'Enable', 'On') ;
    set(handles.aod_prctile_hi, 'Enable', 'On') ;
    set(handles.mirror_prctile_lo, 'Enable', 'On') ;
    set(handles.mirror_prctile_hi, 'Enable', 'On') ;    
else
    set(handles.aod_prctile_lo, 'Enable', 'Off') ;
    set(handles.aod_prctile_hi, 'Enable', 'Off') ;
    set(handles.mirror_prctile_lo, 'Enable', 'Off') ;
    set(handles.mirror_prctile_hi, 'Enable', 'Off') ;    
end ;
    