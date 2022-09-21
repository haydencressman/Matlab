%   M-File: MLP0231
%
%   Gauss's Law Problem
%       solid cylinder with even charge
%
%   Variables
%   rhov    charge density (C/m^3)
%   a       radius of cylinder (m)
%   rho     radial distance from z-axis
%   rhomm   rho in mm
%   D       electric flux density (C/m^3)
%   N       number of data points
%   maxrad  max radius for plot (m)

clc;clear;

%   initialize variables
rhov=70.7e3;
a=0.003;
maxrad=.009;
N=100;
bndy=round(N*a/maxrad);

for i=1:bndy
    rho(i)=i*maxrad/N;
    rhomm(i)=rho(i)*1000;
    D(i)=rhov*rho(i)/2;
end

for i=bndy+1:N
    rho(i)=i*maxrad/N;
    rhomm(i)=rho(i)*1000;
    D(i)=(rhov*a^2)/(2*rho(i));
end
plot(rhomm,D)
xlabel('radial distance (mm)')
ylabel('elect. flux density (C/m^2)')
grid on
