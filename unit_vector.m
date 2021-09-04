%code to find the magnitude and unit vector of a vector
xvalue = "input x value:";
yvalue = "input y value:";
zvalue = "input z value:";

x = input(xvalue);
y = input(yvalue);
z = input(zvalue);

A = [x y z];
maga = sqrt((x^2)+(y^2)+(z^2));
disp(maga);
unitA = (A/maga);
disp(unitA);