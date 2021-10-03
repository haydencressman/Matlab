%   M-File: MLP0233
%   Gauss's Law Problem
%       cylindrical pipe with even charge distribution
%
%   Variables
%   a       inner radius of pipe (m)
%   b       outer radius of pipe (m)
%   rho     radial distance from z-axis (m)
%   rhocm   radial distance in cm
%   D       electric flux density (C/cm^3)
%   N       number of data points
%   maxrad  max radius for plot (m)
clc;clear;

%   initialize variables
a=.04;b=.05;maxrad=0.10;N=100;
bndya=round(N*a/maxrad);
bndyb=round(N*b/maxrad);

for i=1:bndya
    rho(i)=i*maxrad/N;
    rhocm(i)=rho(i)*100;
    D(i)=0;
end

for i=bndya+1:bndyb
    rho(i)=i*maxrad/N;
    rhocm(i)=rho(i)*100;
    D(i)=(3/(2*pi*rho(i)))*((rho(i)^2-a^2)/(b^2-a^2));
end

for i=bndyb+1:N
    rho(i)=i*maxrad/N;
    rhocm(i)=rho(i)*100;
    D(i)=3/(2*pi*rho(i));
end

plot(rhocm,D)
xlabel('radial distance (cm)')
ylabel('elect. flux density (C/m^2)')
grid on
