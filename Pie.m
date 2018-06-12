close all;
clc ;
clear;


%Using Subplots  for the Pie data

pit = xlsread('Data2','I24:I26')

figure(1);
pie(pit,{'Germany','Ghana','Greece'});
colormap jet;
figure(2);
pie(pit,{'Germany','Ghana','Greece'});
colormap jet;