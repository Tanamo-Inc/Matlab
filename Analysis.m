%Data Plot
clc;
clear ;
close all ;


figure(1)

A = xlsread('Data.xlsx','A2:A101');
Num = A.*2;       
B = xlsread('Data.xlsx','B2:B101'); 
C = xlsread('Data.xlsx','C2:C101');

plot(Num,B,'r',Num,C,'g');
xlabel('Number of vehicles arriving');
ylabel('Mean travel time of vehicles');
title('Data-200cars');
legend('DTOS with ACO','DTOS without ACO');


figure(2)

Num2=A.*3;
J = xlsread('Data.xlsx','J2:J101');
K = xlsread('Data.xlsx','K2:K101');

plot(Num2,J,'r',Num2,K,'y');
xlabel('Number of vehicles arriving');
ylabel('Mean travel time of vehicles');
title('Data-300cars');
legend('DTOS with ACO','DTOS without ACO');


figure(3)

Aa = xlsread('Data.xlsx','A2:A90');
Num3 = Aa.*4;
R = xlsread('Data.xlsx','R2:R90');
S = xlsread('Data.xlsx','S2:S90');

plot(Num3,R,'r',Num3,S);
xlabel('Percentage of vehicles arriving');
ylabel('Time taken');
title('Data');
legend('DTOS with ACO','DTOS without ACO');


figure(4)

E = xlsread('Data.xlsx','E2:E11');
F = xlsread('Data.xlsx','F2:F11');
G = xlsread('Data.xlsx','G2:G11');

plot(E,F,'r',E,G,'g');
xlabel('Percentage of vehicles arriving'),
ylabel('Time taken'),
title('Data');
legend('DTOS with ACO','DTOS without ACO');

figure(5)
M = xlsread('Data.xlsx','M2:M11');
N = xlsread('Data.xlsx','N2:N11');
O = xlsread('Data.xlsx','O2:O11');

plot(M,N,'r',M,O,'g');
xlabel('Percentage of vehicles arriving');
ylabel('Time taken');
title('Data');
legend('DTOS with ACO','DTOS without ACO');

figure(6)

U = xlsread('Data.xlsx','U2:U10');
V = xlsread('Data.xlsx','V2:V10');
W = xlsread('Data.xlsx','W2:W10');

plot(U,V,'r',U,W,'b');
xlabel('Percentage of vehicles arriving');
ylabel('Time taken');
title('Data');
legend('DTOS with ACO','DTOS without ACO');






