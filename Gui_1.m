%{          
          Digital Signal Processing (EE 472)   
   %} 

function varargout = Gui_1(varargin)
% Gui_1 MATLAB code for Gui_1.fig
%      Gui_1, by itself, creates a new Gui_1 or raises the existing
%      singleton*.
%
%      H = Gui_1 returns the handle to a new Gui_1 or the handle to
%      the existing singleton*.
%
%      Gui_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Gui_1.M with the given input arguments.
%
%      Gui_1('Property','Value',...) creates a new Gui_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui_1

% Last Modified by GUIDE v2.5 12-May-2017 07:55:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_1_OutputFcn, ...
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


% --- Executes just before Gui_1 is made visible.
function Gui_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui_1 (see VARARGIN)

% Choose default command line output for Gui_1
handles.output = hObject;

set(hObject,'toolbar','figure');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui_1_OutputFcn(hObject, eventdata, handles) 
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
axes(handles.axes1);
Wp=0.7;
Ws=0.5;
Rp=1;
Rs=32;
Ft=4;

[N,Wn]=cheb2ord(Wp,Ws,Rp,Rs);
[b,a]=cheby2(N,Rs,Wn);
[h,omega]=freqz(b,a,256);

plot(omega/pi,20*log10(abs(h)));
grid on;
box on;
xlabel('\omega/\pi');
ylabel('Gain, db');

set(handles.edit1,'String','Chebyshev IIR LowPass Filter');
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','QUESTION One');
cla(handles.axes1);
guidata(hObject,handles);
