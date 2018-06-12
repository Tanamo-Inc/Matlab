close all;
clc ;
clear;

% QUIZ ONE
disp('Calculate for the depth (d)');


g = 9.8 ;

u =  343;

t1 = input('Enter the value of t1 \n');

t2 = input('Enter the value of t2 \n');

%t = t1-t2;

S = (u*(t1-t2)+1/2*g*(t1-t2).^2);

fprintf('The  value of the depth d is %f \n',S );

%end of the code