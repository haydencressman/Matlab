%   M-File: MLP0234
%
%   Gauss's Law Problem
%       cylindrical shell of charge
%
%   Variables
%   a       radius of cylinder (m)
%   Qs      surface charge density (nC/m^2)
%   rho     radial distance from z-axis (m)
%   rhocm   radial distance in cm
%   D       electric flux density (nC/cm^3)
%   N       number of data points
%   maxrad  max radius for plot (cm)

clc;clear;

%   initialize variables
a=.04;Qs=398;maxrad=0.12;N=100;
bndy=round(N*a/maxrad);

for i=1:bndy
    rho(i)=i*maxrad/N;
    rhocm(i)=rho(i)*100;
    D(i)=0;
end

for i=bndy+1:N
    rho(i)=i*maxrad/N;
    rhocm(i)=rho(i)*100;
    D(i)=Qs*a/rho(i);
end

plot(rhocm,D)
xlabel('radial distance (cm)')
ylabel('elect. flux density (nC/m^2)')
grid on
