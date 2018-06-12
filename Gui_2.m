%{          
          Digital Signal Processing (EE 472)
    
   %} 


function varargout = Gui_2(varargin)
% Gui_2 MATLAB code for Gui_2.fig
%      Gui_2, by itself, creates a new Gui_2 or raises the existing
%      singleton*.
%
%      H = Gui_2 returns the handle to a new Gui_2 or the handle to
%      the existing singleton*.
%
%      Gui_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Gui_2.M with the given input arguments.
%
%      Gui_2('Property','Value',...) creates a new Gui_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui_2

% Last Modified by GUIDE v2.5 12-May-2017 08:56:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_2_OutputFcn, ...
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


% --- Executes just before Gui_2 is made visible.
function Gui_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui_2 (see VARARGIN)

% Choose default command line output for Gui_2
handles.output = hObject;

set(hObject,'toolbar','figure');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%declaring variables
Wp=[0.45 0.65];
Ws=[0.3 0.75];
Rp=1;
Rs=40;
%end of variables declaration

axes(handles.axes1);
%butterworth
[N,Wn]=buttord(Wp,Ws,Rp,Rs);
[b,a]=butter(N,Wn);
[h,omega]=freqz(b,a,256);
plot(omega/pi,20*log10(abs(h)),'r');
grid on;
box on;
xlabel('\omega/\pi');
ylabel('Gain, db');
title('Butterworth Band-Pass Filter');
%end of butterworth

axes(handles.axes2);
%chebyshev
[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs);
[b,a]=cheby1(N,Rp,Wn);
[h,omega]=freqz(b,a,256);
plot(omega/pi,20*log10(abs(h)),'g');
grid on;
box on;
xlabel('\omega/\pi');
ylabel('Gain, db');
title('Type 1 Cheybeshev BandPass Filter');

axes(handles.axes3);
%chebyshev
[N,Wn]=cheb2ord(Wp,Ws,Rp,Rs);
[b,a]=cheby2(N,Rs,Wn);
[h,omega]=freqz(b,a,256);
plot(omega/pi,20*log10(abs(h)),'y');
grid on;
box on;
xlabel('\omega/\pi');
ylabel('Gain, db');
title('Type 2 Cheybeshev BandPass Filter');

axes(handles.axes4);
%elliptic
[N,Wn]=ellipord(Wp,Ws,Rp,Rs);
[b,a]=ellip(N,Rp,Rs,Wn);
[h,omega]=freqz(b,a,256);
plot(omega/pi,20*log10(abs(h)));
grid on;
box on;
xlabel('\omega/\pi');
ylabel('Gain, db');
title('Elliptic Band Pass Filter');


set(handles.edit2,'String','Butterworth Filter or Type 1 Chebyshev Filter will be recommended');
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit2,'String','QUESTION TWO');
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
cla(handles.axes4);
guidata(hObject,handles);



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
