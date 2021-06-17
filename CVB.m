%   CVB simulator V1.0 
%   this script will drive CVB in both forward and inverse kinematics Modes
%   made for "EE703 Course"
%   Cukurova Univ
%   9/1/2018
%   by: F. ASIL
%   Advisor : Dr.C.V BAYSAL


function varargout = CVB(varargin)
% CVB MATLAB code for CVB.fig
%      CVB, by itself, creates a new CVB or raises the existing
%      singleton*.
%
%      H = CVB returns the handle to a new CVB or the handle to
%      the existing singleton*.
%
%      CVB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CVB.M with the given input arguments.
%
%      CVB('Property','Value',...) creates a new CVB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CVB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CVB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CVB

% Last Modified by GUIDE v2.5 09-Jan-2018 13:10:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CVB_OpeningFcn, ...
                   'gui_OutputFcn',  @CVB_OutputFcn, ...
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


% --- Executes just before CVB is made visible.
function CVB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CVB (see VARARGIN)

% Choose default command line output for CVB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CVB wait for user response (see UIRESUME)
% uiwait(handles.figure1);

run('startup_rvc.m');
% --- Outputs from this function are returned to the command line.
function varargout = CVB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton1.

%-------fawrard Kinematics-------------
%Building the robot
L(1) = Link([0 0 0 0]);
L(2) = Link([0 0 8.6 pi/2]);
L(3) = Link([0 0 11.4 0]);
L(4)= Link([0 0 10.4 0]) ;
L(5) = Link([0 0 8.4 0]);
CVB = SerialLink(L);
CVB.name = 'CVB';
%get the angles Values
th1 = str2double(handles.edit1.String)*pi/180;
th2 = str2double(handles.edit2.String)*pi/180;
th3 = str2double(handles.edit3.String)*pi/180;
th4 = str2double(handles.edit4.String)*pi/180;
th5 = str2double(handles.edit5.String)*pi/180;

th01 = str2double(handles.t1.String);
th02 = str2double(handles.t2.String);
th03 = str2double(handles.t3.String);
th04 = str2double(handles.t4.String);
th05 = str2double(handles.t5.String);
% Route path
a1= [th1 th2 th3 th4 th5];
a2 = a1*180/pi;
%write the new values
handles.t1.String = num2str(floor(a2(1)));
handles.t2.String = num2str(floor(a2(2)));
handles.t3.String = num2str(floor(a2(3)));
handles.t4.String = num2str(floor(a2(4)));
handles.t5.String = num2str(floor(a2(5)));

zz = [th01 th02 th03 th04 th05]*pi/180;
t = 0:0.05 : 2 ;
q = jtraj(zz,a1,t);
CVB.plot(q);
T = CVB.fkine([th1 th2 th3 th4 th5]);

handles.PX.String = num2str(floor(T(1,4)));
handles.PY.String = num2str(floor(T(2,4)));
handles.PZ.String = num2str(floor(T(3,4)));







function PX_Callback(hObject, eventdata, handles)
% hObject    handle to PX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PX as text
%        str2double(get(hObject,'String')) returns contents of PX as a double


% --- Executes during object creation, after setting all properties.
function PX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PY_Callback(hObject, eventdata, handles)
% hObject    handle to PY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PY as text
%        str2double(get(hObject,'String')) returns contents of PY as a double


% --- Executes during object creation, after setting all properties.
function PY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PZ_Callback(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PZ as text
%        str2double(get(hObject,'String')) returns contents of PZ as a double


% --- Executes during object creation, after setting all properties.
function PZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%inverse kinematics
PXi = str2double(handles.PX.String);
PYi = str2double(handles.PY.String);
PZi = str2double(handles.PZ.String);
L (1) = Link([0 0 0 0]);
L (2) = Link([0 0 8.6 pi/2]);
L (3) = Link([0 0 11.4 0]);
L(4)= Link([0 0 10.4 0]) ;
L(5) = Link([0 0 8.4 0]);
CVB = SerialLink(L);
CVB.name = 'CVB';


T = CVB.fkine([0 0 0 0 0]);
T(1,4) = PXi;
T(2,4) = PYi;
T(3,4) = PZi;

J = CVB.ikine(T,[0 0 0 0 0],[1 1 1 0 0 0])*180/pi;
th1 = str2double(handles.edit1.String);
th2 = str2double(handles.edit2.String);
th3 = str2double(handles.edit3.String);
th4 = str2double(handles.edit4.String);
th5 = str2double(handles.edit5.String);

a1= [th1 th2 th3 th4 th5];
t = 0:0.05 : 2 ;
q = jtraj(a1,J,t);
handles.edit1.String = num2str(floor(J(1)));
handles.edit2.String = num2str(floor(J(2)));
handles.edit3.String = num2str(floor(J(3)));
handles.edit4.String = num2str(floor(J(4)));
handles.edit5.String = num2str(floor(J(5)));

handles.t1.String = num2str(floor(J(1)));
handles.t2.String = num2str(floor(J(2)));
handles.t3.String = num2str(floor(J(3)));
handles.t4.String = num2str(floor(J(4)));
handles.t5.String = num2str(floor(J(5)));


CVB.plot(q*pi/180);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
about();
