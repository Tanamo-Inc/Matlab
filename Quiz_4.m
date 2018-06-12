close all;
clc ;
clear;

%                         QUIZ FOUR



%QUESTION 1

g = 9.8 ;
y0=0;
x0 = 0 ;
v0 = 50.75;
theta = (5*pi/12);
t = 0:0.1:100;

y = y0-(1/2*g*t.^2)+v0*(sin(theta))*t ;
figure(1);
plot(y,'r:');
title('plot of y(t) ');
xlabel('t');
ylabel('y(t)');
grid

x = x0 + v0*(cos(theta))*t ;
figure(2);
plot(x,'g*');
title('plot of x(t) ');
xlabel('t');
ylabel('x(t)');
grid

%Question 2.
ts = 0:0.01:10;
f = sin(pi*ts.^2/2);
figure(3);
plot(ts,f,'y --')
title('A plot of f agains t ts');
xlabel('ts');
ylabel('f');
grid

