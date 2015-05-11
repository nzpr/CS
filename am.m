function [ x ] = am( N )

Fs=50000;
t=(1:N)/Fs;
f0=7961;
f1=500;
x=(1+2*sin(2*pi*f1*t)).*sin(2*pi*f0*t);
plot(x);

end

