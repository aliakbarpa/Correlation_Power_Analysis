function varargout = Key_GUI(varargin)
% KEY_GUI MATLAB code for Key_GUI.fig
%      KEY_GUI, by itself, creates a new KEY_GUI or raises the existing
%      singleton*.
%
%      H = KEY_GUI returns the handle to a new KEY_GUI or the handle to
%      the existing singleton*.
%
%      KEY_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KEY_GUI.M with the given input arguments.
%
%      KEY_GUI('Property','Value',...) creates a new KEY_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Key_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Key_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Key_GUI

% Last Modified by GUIDE v2.5 13-Oct-2014 13:34:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Key_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Key_GUI_OutputFcn, ...
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


% --- Executes just before Key_GUI is made visible.
function Key_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Key_GUI (see VARARGIN)

% Choose default command line output for Key_GUI
handles.output = hObject;
axes(handles.axes17);
imshow('NTU_Logo.jpg');
axes(handles.axes18);
imshow('EEE.png');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Key_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Key_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Key1.
function Key1_Callback(hObject, eventdata, handles)
% hObject    handle to Key1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
load('Attack.mat', 'key1');
for i=1:256
max1(i)= max(abs(key1(i,:)));
max1= max1';
max2= max(max1);
a = (find(max1 == max2))-1;
end
set(handles.no1, 'String', a);
plot(key1);


% --- Executes on button press in Key2.
function Key2_Callback(hObject, eventdata, handles)
% hObject    handle to Key2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
load('Attack.mat', 'key2');
for i=1:256
max1(i)= max(abs(key2(i,:)));
max1= max1';
max2= max(max1);
b = (find(max1 == max2))-1;
end
set(handles.no2, 'String', b);
plot(key2);


% --- Executes on button press in Key12.
function Key12_Callback(hObject, eventdata, handles)
% hObject    handle to Key12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes12);
load('Attack.mat', 'key12');
for i=1:256
max1(i)= max(abs(key12(i,:)));
max1= max1';
max2= max(max1);
c = (find(max1 == max2))-1;
end
set(handles.no12, 'String', c);
plot(key12);

% --- Executes on button press in Key11.
function Key11_Callback(hObject, eventdata, handles)
% hObject    handle to Key11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes11);
load('Attack.mat', 'key11');
for i=1:256
max1(i)= max(abs(key11(i,:)));
max1= max1';
max2= max(max1);
d = (find(max1 == max2))-1;
end
set(handles.no11, 'String', d);
plot(key11);

% --- Executes on button press in Key10.
function Key10_Callback(hObject, eventdata, handles)
% hObject    handle to Key10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes10);
load('Attack.mat', 'key10');
for i=1:256
max1(i)= max(abs(key10(i,:)));
max1= max1';
max2= max(max1);
e = (find(max1 == max2))-1;
end
set(handles.no10, 'String', e);
plot(key10);


% --- Executes on button press in Key9.
function Key9_Callback(hObject, eventdata, handles)
% hObject    handle to Key9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes9);
load('Attack.mat', 'key9');
for i=1:256
max1(i)= max(abs(key9(i,:)));
max1= max1';
max2= max(max1);
f = (find(max1 == max2))-1;
end
set(handles.no9, 'String', f);
plot(key9);


% --- Executes on button press in Key8.
function Key8_Callback(hObject, eventdata, handles)
% hObject    handle to Key8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes8);
load('Attack.mat', 'key8');
for i=1:256
max1(i)= max(abs(key8(i,:)));
max1= max1';
max2= max(max1);
g = (find(max1 == max2))-1;
end
set(handles.no8, 'String', g);
plot(key8);


% --- Executes on button press in Key7.
function Key7_Callback(hObject, eventdata, handles)
% hObject    handle to Key7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes7);
load('Attack.mat', 'key7');
plot(key7);
for i=1:256
max1(i)= max(abs(key7(i,:)));
max1= max1';
max2= max(max1);
h = (find(max1 == max2))-1;
end
set(handles.no7, 'String', h);



% --- Executes on button press in Key6.
function Key6_Callback(hObject, eventdata, handles)
% hObject    handle to Key6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes6);
load('Attack.mat', 'key6');
plot(key6);
for i=1:256
max1(i)= max(abs(key6(i,:)));
max1= max1';
max2= max(max1);
i = (find(max1 == max2))-1;
end
set(handles.no6, 'String',i);

% --- Executes on button press in Key5.
function Key5_Callback(hObject, eventdata, handles)
% hObject    handle to Key5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes5);
load('Attack.mat', 'key5');
plot(key5);
for i=1:256
max1(i)= max(abs(key5(i,:)));
max1= max1';
max2= max(max1);
j = (find(max1 == max2))-1;
end
set(handles.no5, 'String', j);


% --- Executes on button press in Key4.
function Key4_Callback(hObject, eventdata, handles)
% hObject    handle to Key4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes4);
load('Attack.mat', 'key4');
plot(key4);
for i=1:256
max1(i)= max(abs(key4(i,:)));
max1= max1';
max2= max(max1);
k = (find(max1 == max2))-1;
end
set(handles.no4, 'String', k);



% --- Executes on button press in Key3.
function Key3_Callback(hObject, eventdata, handles)
% hObject    handle to Key3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
load('Attack.mat', 'key3');
plot(key3);
for i=1:256
max1(i)= max(abs(key3(i,:)));
max1= max1';
max2= max(max1);
l = (find(max1 == max2))-1;
end
set(handles.no3, 'String', l);

% --- Executes on button press in Key15.
function Key15_Callback(hObject, eventdata, handles)
% hObject    handle to Key15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes15);
load('Attack.mat', 'key15');
plot(key15);
for i=1:256
max1(i)= max(abs(key15(i,:)));
max1= max1';
max2= max(max1);
m = (find(max1 == max2))-1;
end
set(handles.no15, 'String', m);

% --- Executes on button press in Key14.
function Key14_Callback(hObject, eventdata, handles)
% hObject    handle to Key14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes14);
load('Attack.mat', 'key14');
plot(key14);
for i=1:256
max1(i)= max(abs(key14(i,:)));
max1= max1';
max2= max(max1);
n = (find(max1 == max2))-1;
end
set(handles.no14, 'String', n);

% --- Executes on button press in Key13.
function Key13_Callback(hObject, eventdata, handles)
% hObject    handle to Key13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes13);
load('Attack.mat', 'key13');
plot(key13);
for i=1:256
max1(i)= max(abs(key13(i,:)));
max1= max1';
max2= max(max1);
o = (find(max1 == max2))-1;
end
set(handles.no13, 'String', o);
% --- Executes on button press in Key16.
function Key16_Callback(hObject, eventdata, handles)
% hObject    handle to Key16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes16);
load('Attack.mat', 'key16');
plot(key16);
for i=1:256
max1(i)= max(abs(key16(i,:)));
max1= max1';
max2= max(max1);
p = (find(max1 == max2))-1;
end
set(handles.no16, 'String', p);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function no1_Callback(hObject, eventdata, handles)
% hObject    handle to no1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no1 as text
%        str2double(get(hObject,'String')) returns contents of no1 as a double


% --- Executes during object creation, after setting all properties.
function no1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no2_Callback(hObject, eventdata, handles)
% hObject    handle to no2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no2 as text
%        str2double(get(hObject,'String')) returns contents of no2 as a double


% --- Executes during object creation, after setting all properties.
function no2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no3_Callback(hObject, eventdata, handles)
% hObject    handle to no3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no3 as text
%        str2double(get(hObject,'String')) returns contents of no3 as a double


% --- Executes during object creation, after setting all properties.
function no3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no4_Callback(hObject, eventdata, handles)
% hObject    handle to no4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no4 as text
%        str2double(get(hObject,'String')) returns contents of no4 as a double


% --- Executes during object creation, after setting all properties.
function no4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no5_Callback(hObject, eventdata, handles)
% hObject    handle to no5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no5 as text
%        str2double(get(hObject,'String')) returns contents of no5 as a double


% --- Executes during object creation, after setting all properties.
function no5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no6_Callback(hObject, eventdata, handles)
% hObject    handle to no6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no6 as text
%        str2double(get(hObject,'String')) returns contents of no6 as a double


% --- Executes during object creation, after setting all properties.
function no6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no7_Callback(hObject, eventdata, handles)
% hObject    handle to no7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no7 as text
%        str2double(get(hObject,'String')) returns contents of no7 as a double


% --- Executes during object creation, after setting all properties.
function no7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no8_Callback(hObject, eventdata, handles)
% hObject    handle to no8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no8 as text
%        str2double(get(hObject,'String')) returns contents of no8 as a double


% --- Executes during object creation, after setting all properties.
function no8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no9_Callback(hObject, eventdata, handles)
% hObject    handle to no9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no9 as text
%        str2double(get(hObject,'String')) returns contents of no9 as a double


% --- Executes during object creation, after setting all properties.
function no9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no10_Callback(hObject, eventdata, handles)
% hObject    handle to no10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no10 as text
%        str2double(get(hObject,'String')) returns contents of no10 as a double


% --- Executes during object creation, after setting all properties.
function no10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no11_Callback(hObject, eventdata, handles)
% hObject    handle to no11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no11 as text
%        str2double(get(hObject,'String')) returns contents of no11 as a double


% --- Executes during object creation, after setting all properties.
function no11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no12_Callback(hObject, eventdata, handles)
% hObject    handle to no12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no12 as text
%        str2double(get(hObject,'String')) returns contents of no12 as a double


% --- Executes during object creation, after setting all properties.
function no12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no13_Callback(hObject, eventdata, handles)
% hObject    handle to no13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no13 as text
%        str2double(get(hObject,'String')) returns contents of no13 as a double


% --- Executes during object creation, after setting all properties.
function no13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no14_Callback(hObject, eventdata, handles)
% hObject    handle to no14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no14 as text
%        str2double(get(hObject,'String')) returns contents of no14 as a double


% --- Executes during object creation, after setting all properties.
function no14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no15_Callback(hObject, eventdata, handles)
% hObject    handle to no15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no15 as text
%        str2double(get(hObject,'String')) returns contents of no15 as a double


% --- Executes during object creation, after setting all properties.
function no15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no16_Callback(hObject, eventdata, handles)
% hObject    handle to no16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no16 as text
%        str2double(get(hObject,'String')) returns contents of no16 as a double


% --- Executes during object creation, after setting all properties.
function no16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function corkey_Callback(hObject, eventdata, handles)
% hObject    handle to corkey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of corkey as text
%        str2double(get(hObject,'String')) returns contents of corkey as a double


% --- Executes during object creation, after setting all properties.
function corkey_CreateFcn(hObject, eventdata, handles)
% hObject    handle to corkey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in corkeys.
function corkeys_Callback(hObject, eventdata, handles)
% hObject    handle to corkeys (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


cor = ('6, 0, 65, 170, 249, 192, 222, 207, 189, 75, 31, 10, 235, 48, 86, 154');
set(handles.corkey, 'String', cor);
