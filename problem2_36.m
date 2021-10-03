%   M-File: MLP0236
%   Gauss's Law Problem
%       thick spherical shell with even charge
%
%   Variables
%   a       inner radius of sphere (m)
%   b       outer radius of sphere (m)
%   r       radial distance from origin (m)
%   rcm     radial distance in cm
%   D       electric flux density (nC/cm^3)
%   N       number of data points
%   maxr    max radius for plot (m)
%   Q       charge (nC)

clc;clear;

%   initialize variables
a=.02;b=.04;
Q=12;
maxrad=0.10;
N=100;
bndya=round(N*a/maxrad);
bndyb=round(N*b/maxrad);

for i=1:bndya
    r(i)=i*maxrad/N;
    rcm(i)=r(i)*100;
    D(i)=0;
end

for i=bndya+1:bndyb
    r(i)=i*maxrad/N;
    rcm(i)=r(i)*100;
    D(i)=(Q/(4*pi*r(i)^2))*(r(i)^3-a^3)/(b^3-a^3);
end

for i=bndyb+1:N
    r(i)=i*maxrad/N;
    rcm(i)=r(i)*100;
    D(i)=Q/(4*pi*r(i)^2);
end

plot(rcm,D)
xlabel('radial distance (cm)')
ylabel('elect. flux density (nC/m^2)')
grid on
