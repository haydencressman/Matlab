%this program gets the force and the electric field intensity of two
%point charges acting upon one another
clear

first = input("enter first charge vector: ");
second = input("enter second charge vector: ");
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

charge1 = input("enter charge of first vector in C: ");
charge2 = input("enter charge of second vector in C: ");

force = (((charge1)*(charge2))/((mag^2)*4*3.14159*8.854e-12))*unit;
field = force/charge2;
disp("---------------------------------------");
disp("     Force");
disp(force);
disp("---------------------------------------");
disp("     Field");
disp(field);
disp("---------------------------------------");
