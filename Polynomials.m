%matlab code
close all;
clc ;
clear;

%Using Polyval (Polynomials  Evaluation) And Normal Approach.

t = (-1:0.1:3);
a=[1 4 -7 -10];
V = t.^3+4*t.^2-7*t-10 ;
A=polyval(a,t);

plot(t,A,'r --',t,V,'k *')
title('Polynomial Function A = t^3 + 4t^2-7t -10');
legend('Using polyval approach','Using normal Approach');
xlabel('t');
ylabel('A');


%Multiplications of polynomials using conv method.
%Solve this F(s) = (s + 2)(s + 3) using conv.

b = [1 2];
c = [1 3];

bc = conv(b,c)


%Divisions of polynomials using deconv method.

%(s3+5s2+11s+13)/(s2+2s+4)

num = [1 5 11 13];
den = [1 2 4];

[q,r] = deconv(num,den)

%Differentiating of polynomials using polyder method.
% Differentiate P(s)=s3+4s2-7s-10 using polyder.

pol = [1 4 -7 -10];
dif =polyder(pol)


%Solving  for the roots of polynomials using roots method.
%D(s) = s2+6s+9 ;

rr = [1 6 9 ];
rut = roots(rr)

%Partial  Fraction Expansion.

% H(s) = (s+2)/(s3+4s2+3s) ........ Distinct Real Roots.
nu = [1 2];
de = [1 4 3 0] ;
[c,r,q] = residue(nu,de)

% H(s) = (s^2-2s+1)/(s^3+3s^2+4s+2) ........ Distinct Complex Roots.

nuu = [1 -2 1];
dee = [1 3 4 2] ;

[c,r,q] = residue(nuu,dee)

% H(s) = (s^3+2s-4)/(s^2+4s-2) ........ Improper rational functions.

nums = [1 0 2 -4];
dens = [1 4 -2 ];

[c,r,q] = residue(nums,dens)








