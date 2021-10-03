%this program is conversion for cartesion to cylindrical and v.v.
%convertion for spherical coordinate system
clear

decision = input("enter 1 for cyl to cart, 0 for cart to cyl: ");
disp("Please input numbers in radians for this one if you are going from cyl to cart!");
vector = input("enter the vector in brackets []: ");

if decision == 1
    third = vector(3);
    first = vector(1)*cos(vector(2));
    second = vector(1)*sin(vector(2));
elseif decision == 0
    first = sqrt((vector(1)^2)+(vector(2)^2));
    second = atan(vector(2)/vector(1));
    third = vector(3);
end

converted = [first second third];
disp("-------------------------");
disp(converted);
disp("-------------------------");
