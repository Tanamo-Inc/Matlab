% Using Gausian  to model random noise.

t = linspace(0,10,512);

s = sin(2*pi/5*t);

n = 0.1*randn(size(t));

x = s+n ;

plot(t,x,'r*');