function varargout = matchoutcomedisplay(varargin)
% MATCHOUTCOMEDISPLAY MATLAB code for matchoutcomedisplay.fig
%      MATCHOUTCOMEDISPLAY, by itself, creates a new MATCHOUTCOMEDISPLAY or raises the existing
%      singleton*.
%
%      H = MATCHOUTCOMEDISPLAY returns the handle to a new MATCHOUTCOMEDISPLAY or the handle to
%      the existing singleton*.
%
%      MATCHOUTCOMEDISPLAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATCHOUTCOMEDISPLAY.M with the given input arguments.
%
%      MATCHOUTCOMEDISPLAY('Property','Value',...) creates a new MATCHOUTCOMEDISPLAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matchoutcomedisplay_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matchoutcomedisplay_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matchoutcomedisplay

% Last Modified by GUIDE v2.5 28-Jun-2013 14:50:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matchoutcomedisplay_OpeningFcn, ...
                   'gui_OutputFcn',  @matchoutcomedisplay_OutputFcn, ...
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





% --- Executes just before matchoutcomedisplay is made visible.
function matchoutcomedisplay_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to aodimage
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matchoutcomedisplay (see VARARGIN)

% Choose default command line output for matchoutcomedisplay
%handles.output = hObject;

handles.varargin = varargin ;


global zoffset ;
zoffset = 0 ;

handles.comp = 0 ;

handles.sync = false ;

scdata_aod = cell2mat(handles.varargin(1)); 
scdata_mirror = cell2mat(handles.varargin(2)); 
aodframeislarger = cell2mat(handles.varargin(12));

handles.aodselframe = cell2mat(handles.varargin(10)); 
handles.matchingframe = cell2mat(handles.varargin(11));
handles.maxz = size(scdata_aod,3) ;

if (aodframeislarger)
    montage_frames = ones(size(scdata_mirror,1), size(scdata_mirror,2), 1, 6) ;
    montage_frames_ch2 = ones(size(scdata_mirror,1), size(scdata_mirror,2), 1, 6) ;
else
    montage_frames = ones(size(scdata_aod,1), size(scdata_aod,2), 1, 6) ;
    montage_frames_ch2 = ones(size(scdata_aod,1), size(scdata_aod,2), 1, 6) ;
end ;

handles.montage_frames = montage_frames ;
handles.montage_frames_ch2 = montage_frames_ch2 ;

% mix the two channels equally
set(handles.channelMixing, 'Value', 0.5) ;

% Update handles structure
guidata(hObject, handles);

Draw(hObject, handles) ;

% UIWAIT makes matchoutcomedisplay wait for user response (see UIRESUME)
uiwait(handles.aodframe);


 
 
 

function Draw(hObject, handles)

global zoffset ;

scdata_aod = cell2mat(handles.varargin(1)); 
scdata_mirror = cell2mat(handles.varargin(2)); 
scdata_mirror_ch2 = cell2mat(handles.varargin(3)); 
srcrow = cell2mat(handles.varargin(4)); 
srccol = cell2mat(handles.varargin(5)); 
destrow = cell2mat(handles.varargin(6)); 
destcol = cell2mat(handles.varargin(7)); 
effectiveheight = cell2mat(handles.varargin(8)); 
effectivewidth = cell2mat(handles.varargin(9)); 
aodselframe = cell2mat(handles.varargin(10)); 
aodframeislarger = cell2mat(handles.varargin(12));

montage_frames = handles.montage_frames ;
montage_frames_ch2 = handles.montage_frames_ch2 ;
matchingframe = handles.matchingframe;

axes(handles.aodimage) ;

% select aod frame to draw
aodframe = handles.aodselframe ;
if (handles.sync)
    aodframe =  handles.aodselframe + handles.comp ;
end ;

% get the aod frame
if (aodframeislarger)
    im1 = zeros(size(scdata_mirror,1), size(scdata_mirror,2)) ;
    im1(destrow:destrow+effectiveheight-1, destcol:destcol+effectivewidth-1) = squeeze(scdata_aod(srcrow:srcrow+effectiveheight-1,...
                                                                                srccol:srccol+effectivewidth-1, aodframe)) ;
else
    im1 = squeeze(scdata_aod(:,:, aodframe)) ;
end ;

% get size of destination rectagle in pixels
oldunits = get(handles.aodimage, 'Units') ;
set(handles.aodimage, 'Units', 'pixels') ;
p1 = get(handles.aodimage, 'Position') ;
set(handles.aodimage, 'Units', oldunits) ;

% resize the image proprtionally to fit the destination rectangle
sr1 = min(p1(4)/size(im1,1), p1(3)/size(im1,2)) ;

% draw mirror aodimage
jj=2 ; 
for ii=-1:1
    kk = matchingframe+ii+handles.comp ;
    if (aodframeislarger)
        if ((kk >= 1) & (kk < size(scdata_mirror,3)))
            montage_frames(:,:,1,jj) = squeeze(scdata_mirror(:,:,kk)) ;
            montage_frames_ch2(:,:,1,jj) = squeeze(scdata_mirror_ch2(:,:,kk)) ;
        else
            montage_frames(:,:,1,jj) = zeros(size(scdata_mirror,1), size(scdata_mirror,2)) + min(scdata_mirror(:));
            montage_frames_ch2(:,:,1,jj) = zeros(size(scdata_mirror_ch2,1), size(scdata_mirror_ch2,2)) + min(scdata_mirror_ch2(:));
        end ;
    else
        if ((kk >= 1) & (kk < size(scdata_mirror,3)))
            montage_frames(:,:,1,jj) = squeeze(scdata_mirror(srcrow:srcrow+effectiveheight-1,...
                                                                            srccol:srccol+effectivewidth-1, kk)) ;
            montage_frames_ch2(:,:,1,jj) = squeeze(scdata_mirror_ch2(srcrow:srcrow+effectiveheight-1,...
                                                                            srccol:srccol+effectivewidth-1, kk)) ;
        else
            montage_frames(:,:,1,jj) = zeros(size(scdata_aod,1), size(scdata_aod,2)) + min(scdata_mirror(:));
        end ;
    end ;
    jj = jj + 2 ;
end ;
montage_rows = 3 ;
montage_cols = 2 ;
colormontageimage = makecolormontage(montage_frames, montage_frames_ch2, montage_rows, montage_cols, get(handles.channelMixing, 'Value')) ;
im2 = squeeze(colormontageimage(:,:,:,2)) ; % 2 corresponds to the middle frame, 1 is previous and 3 is next 

axes(handles.mirrorimage) ;

% get size of destination rectagle in pixels
oldunits = get(handles.mirrorimage, 'Units') ;
set(handles.mirrorimage, 'Units', 'pixels') ;
p2 = get(handles.mirrorimage, 'Position') ;
set(handles.mirrorimage, 'Units', oldunits) ;

% resize the image proprtionally to fit the destination rectangle
sr2 = min(p2(4)/size(im2,1), p2(3)/size(im2,2)) ;

% pick the smaller scaling factor of the two
sr = min(sr1, sr2) ;


% scale aod image
t1 = imresize(im1, sr) ;

% center the resized image
axes(handles.aodimage) ;
im1 = zeros(p1(4), p1(3)) ;
drow = floor((p1(4)/2)-(size(t1,1)/2))+1 ;
dcol = floor((p1(3)/2)-(size(t1,2)/2))+1 ;
im1(drow:drow+size(t1,1)-1, dcol:dcol+size(t1,2)-1) = t1 ;

% draw the aod frame
imagesc(im1) ;
colormap([[0:1:255]'/255 [0:1:255]'/255 [0:1:255]'/255]) ;
axis off ;



% scale mirror frame
t1 = imresize(im2, sr) ;

% center the resized image, this is a RGB image
im2 = zeros(p2(4), p2(3), 3) ;
drow = floor((p2(4)/2)-(size(t1,1)/2))+1 ;
dcol = floor((p2(3)/2)-(size(t1,2)/2))+1 ;
im2(drow:drow+size(t1,1)-1, dcol:dcol+size(t1,2)-1, :) = t1 ;

% draw the mirror image
im2 = max(im2,0) ;
im2 = min(im2,1) ;
axes(handles.mirrorimage) ;
image(im2) ;
axis off ;


% show the aod and mirror frame numbers
set(handles.AODFrame, 'String', sprintf('%d', aodframe)) ;
set(handles.MirrorFrame, 'String', sprintf('%d', matchingframe+handles.comp)) ;

if (handles.sync)
    matchingframe = matchingframe + handles.comp ;
    zoffset = matchingframe - aodselframe ;
end ;

% Update handles structure
guidata(hObject, handles);






% --- Outputs from this function are returned to the command line.
function varargout = matchoutcomedisplay_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to aodimage
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;
global zoffset ;

varargout{1} = zoffset ;






% --- Executes on button press in Done.
function Done_Callback(hObject, eventdata, handles)
% hObject    handle to Done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% lock the sync flag
handles.sync = true ;

% draw to update the zoffset variable
Draw(hObject,handles) ;

close ;





% f1 and f2 must have same sizes, 3rd frame in the montage is the aod frame
% mixproportion = 0, means only green; mixproprtion=1, means only red
function y = makecolormontage_old(f1, f2, mrows, mcols, mixproportion)
    
    cm1 = [[0:1:255]'*0 ([0:1:255]'/255)*min(mixproportion*2,1) [0:1:255]'*0] ;
    cm2 = [([0:1:255]'/255)*min((1-mixproportion)*2,1) [0:1:255]'*0 [0:1:255]'*0] ;
    cm3 = [[0:1:255]'/255 [0:1:255]'/255 [0:1:255]'/255] ;
    f1rgb = zeros(size(f1,1), size(f1,2), 3, size(f1,4)) ;
    f2rgb = f1rgb ;
    f1f2 = f1rgb ;
    for ii=1:size(f1,4)
        if (ii==3) % aod reference frame
            f1f2(:,:,:,ii) = ind2rgb(round(squeeze(f1(:,:,1,ii))), cm3) ;
        else
%           convert to rgb, f1 is green channel only and f2 is red channel only
            f1rgb(:,:,:,ii) = ind2rgb(round(squeeze(f1(:,:,1,ii))), cm1) ;
            f2rgb(:,:,:,ii) = ind2rgb(round(squeeze(f2(:,:,1,ii))), cm2) ;
            
%           sum them up
            f1f2(:,:,:,ii) = f1rgb(:,:,:,ii) + f2rgb(:,:,:,ii) ;
        end ;        
    end ; 
    
%   merge into a montage
    y = [] ;
    for ii=1:mrows
        t1 = [] ;
        for jj=1:mcols
            t1 = cat(2, t1, squeeze(f1f2(:,:,:,(ii-1)*mcols+jj))) ;
        end ;
        y = cat(1,y,t1) ;
    end ;

 
    
% f1 and f2 must have same sizes, 3rd frame in the montage is the aod frame
% mixproportion = 0, means only green; mixproprtion=1, means only red
% return the 3 mixed mirror frames
function y = makecolormontage(f1, f2, mrows, mcols, mixproportion)
    
    cm1 = [[0:1:255]'*0 ([0:1:255]'/255)*min(mixproportion*2,1) [0:1:255]'*0] ;
    cm2 = [([0:1:255]'/255)*min((1-mixproportion)*2,1) [0:1:255]'*0 [0:1:255]'*0] ;
    cm3 = [[0:1:255]'/255 [0:1:255]'/255 [0:1:255]'/255] ;
    f1rgb = zeros(size(f1,1), size(f1,2), 3, size(f1,4)) ;
    f2rgb = f1rgb ;
    f1f2 = f1rgb ;
    for ii=1:size(f1,4)
        if (ii==3) % aod reference frame
            f1f2(:,:,:,ii) = ind2rgb(round(squeeze(f1(:,:,1,ii))), cm3) ;
        else
%           convert to rgb, f1 is green channel only and f2 is red channel only
            f1rgb(:,:,:,ii) = ind2rgb(round(squeeze(f1(:,:,1,ii))), cm1) ;
            f2rgb(:,:,:,ii) = ind2rgb(round(squeeze(f2(:,:,1,ii))), cm2) ;
            
%           sum them up
            f1f2(:,:,:,ii) = f1rgb(:,:,:,ii) + f2rgb(:,:,:,ii) ;
        end ;        
    end ; 
    f1f2 = min(f1f2,1) ;
    f1f2 = max(f1f2,0) ;
    
%   image structure is a RGB structure
    y = zeros(size(f1,1), size(f1,2), 3, 3) ;
    y(:,:,:,1) = f1f2(:,:,:,2) ;
    y(:,:,:,2) = f1f2(:,:,:,4) ;
    y(:,:,:,3) = f1f2(:,:,:,6) ;
    
      
    

% --- Executes on button press in previousFrame.
function previousFrame_Callback(hObject, eventdata, handles)
% hObject    handle to previousFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (handles.comp+handles.matchingframe>1)
        handles.comp = handles.comp - 1 ;
end ;
if (handles.sync)
    if (handles.comp+handles.aodselframe<0)
            handles.comp = handles.comp + 1 ;
    end ;
end;
% Update handles structure
guidata(hObject, handles);

Draw(hObject, handles) ;





% --- Executes on button press in nextFrame.
function nextFrame_Callback(hObject, eventdata, handles)
% hObject    handle to nextFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (handles.comp+handles.matchingframe<handles.maxz)
    handles.comp = handles.comp + 1 ;
end ;
if (handles.sync)
    if (handles.comp+handles.aodselframe>handles.maxz)
        handles.comp = handles.comp - 1 ;
    end ;
end ;

% Update handles structure
guidata(hObject, handles);

Draw(hObject, handles) ;




% --- Executes on slider movement.
function channelMixing_Callback(hObject, eventdata, handles)
% hObject    handle to channelMixing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Draw(hObject, handles) ;





% --- Executes during object creation, after setting all properties.
function channelMixing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to channelMixing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in syncVolume.
function syncVolume_Callback(hObject, eventdata, handles)
% hObject    handle to syncVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of syncVolume
handles.sync = ~handles.sync ;
if (handles.sync)
    handles.matchingframe = handles.matchingframe + handles.comp ;
else
    handles.aodselframe = handles.aodselframe + handles.comp ;
end ;
handles.comp = 0 ;

guidata(hObject, handles);



function AODFrame_Callback(hObject, eventdata, handles)
% hObject    handle to AODFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AODFrame as text
%        str2double(get(hObject,'String')) returns contents of AODFrame as a double


% --- Executes during object creation, after setting all properties.
function AODFrame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AODFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MirrorFrame_Callback(hObject, eventdata, handles)
% hObject    handle to MirrorFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MirrorFrame as text
%        str2double(get(hObject,'String')) returns contents of MirrorFrame as a double


% --- Executes during object creation, after setting all properties.
function MirrorFrame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MirrorFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.aodselframe = cell2mat(handles.varargin(10)); 
handles.matchingframe = cell2mat(handles.varargin(11));

handles.comp = 0 ;
guidata(hObject, handles);

Draw(hObject, handles) ;
