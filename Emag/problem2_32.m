%   M-File: MLP0232
%
%   Gauss's Law Problem
%       solid cylinder with radially-dependent charge
%
%   Variables
%   a       radius of cylinder (cm)
%   rho     radial distance from z-axis
%   D       electric flux density (C/cm^3)
%   N       number of data points
%   maxrad  max radius for plot (cm)

clc;clear;

%   initialize variables
a=2;
maxrad=8;
N=100;
bndy=round(N*a/maxrad);

for i=1:bndy
    rho(i)=i*maxrad/N;
    D(i)=2*rho(i)^2;
end

for i=bndy+1:N
    rho(i)=i*maxrad/N;
    D(i)=(2*a^3)/rho(i);
end
plot(rho,D)
xlabel('radial distance (cm)')
ylabel('elect. flux density (C/cm^2)')
grid on
