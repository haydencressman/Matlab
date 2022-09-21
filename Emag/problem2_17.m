clc
clear
%this program plots E of a finite line over E of an infinite line over the
%Length of the line divided by the distance
%E_line/E_infinite = ratio
%d = distance from line
%L/d is the x value for plot
%the ratio is equivelent to L/(sqrt(L^2 + d^2))

x = 0:.1:100;
%these are the x values, a.k.a. L/d
y = x./(sqrt(1+x.^2));
%this is the ratio function, (L/d)/(sqrt(1+(L/d)^2))
semilogx(x,y)
%plots x as a base 10 logarithmic scale so that the graph is readable since
%it is greatly exponential
grid on
xlabel('L/d')
ylabel('(L/d)/(sqrt(1+(L/d)^2)')

