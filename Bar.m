%matlab code
close all;
clc ;
clear;


%Using Subplots  for Bar data
subplot(2,2,1);
Data = xlsread('Data2.xlsx','F2:F86');
bar(Data,'y');


title('Labor Tax')
xlabel('X')
ylabel('Y')
grid

subplot(2,2,2);
Data = xlsread('Data2.xlsx','C2:C86');
x =1:length(Data);
bar(x);
title('Statutory')
xlabel('X')
ylabel('Y')
grid

subplot(2,2,3);
Data = xlsread('Data2.xlsx','P2:P86');
x =1:length(Data);
bar(x,'g');
title('Tax Evasion')
xlabel('X')
ylabel('Y')
grid


subplot(2,2,4);
Data = xlsread('Data2.xlsx','H2:H86');
x =1:length(Data);
bar(x,'r');
title('VAT')
xlabel('X')
ylabel('Y')
grid



