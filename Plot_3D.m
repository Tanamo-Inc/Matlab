%Three Dimensional Plots...

clc;
clear all ;
close all ;


x = [-2:0.1:2];
y = [-2:0.1:2];

[X,Y] = meshgrid(x,y);

Z = Y.*exp(-(X.^2+Y.^2));

%Using  Mesh plot.
subplot(2,2,1);
mesh(X,Y,Z);
title('Mesh plot');
xlabel('x');
ylabel('y');

%Using   Surf plot.
subplot(2,2,2);
surf(X,Y,Z);
title('Surf plot');
xlabel('x');
ylabel('y');

%Using  Contour  plot.
subplot(2,2,3);
contour(x,y,Z);
title('Contour plot');
xlabel('x');
ylabel('y');

%Using Meshc plot.
subplot(2,2,4);
meshc(X,Y,Z);
title('Meshc plot');
xlabel('x');
ylabel('y');


