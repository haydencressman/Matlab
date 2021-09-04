%this program will take two normal vectors and do the math for them to be
%combined and turned into magnitude and unit vector
clc
first = input('Enter first vector with [] around the digits: ');
second = input('Enter second vector with [] around the digits: ');

decision = input('Please choose whether to add or subtract vectors. 1 for add, 0 for subtract: ');
if decision == 1
    vector = second + first;
else
    vector = second - first;
end
mag = 0;
for count = 1:1:3
    mag = (vector(count)^2) + mag;
end
mag = sqrt(mag);

unit = vector/mag;
disp("------------------------");
disp("     Vector");
disp(vector);
disp("------------------------");
disp("     Magnitude");
disp(mag);
disp("------------------------");
disp("     Unit Vector");
disp(unit);
