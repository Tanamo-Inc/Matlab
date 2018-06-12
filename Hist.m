
close all;
clc ;
clear;


%Using Subplots  for the histogram data
subplot(2,2,1);

Data = xlsread('Data2.xlsx','F2:F86');
hist(Data)
title('Labor Tax')
xlabel('X')
ylabel('Y')
grid

subplot(2,2,2)
Data = xlsread('Data2.xlsx','C2:C86');
hist(Data)
title('Statutory')
xlabel('X')
ylabel('Y')
grid

subplot(2,2,3)
Data = xlsread('Data2.xlsx','P2:P86');
hist(Data)
title('Tax Evasion')
xlabel('X')
ylabel('Y')
grid

subplot(2,2,4)
Data = xlsread('Data2.xlsx','H2:H86');
hist(Data)
title('VAT')
xlabel('X')
ylabel('Y')
grid


