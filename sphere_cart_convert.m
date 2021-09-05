%convertion for spherical coordinate system
clear

decision = input("enter 1 for sphere to cart, 0 for cart to sphere: ");
disp("Please input numbers in radians if you are going from sphere to cart!");
vector = input("enter the vector in brackets []: ");

if decision == 1
    third = vector(1)*cos(vector(2));
    first = vector(1)*sin(vector(2))*cos(vector(3));
    second = vector(1)*sin(vector(2))*sin(vector(3));
elseif decision == 0
    first = sqrt((vector(1)^2)+(vector(2)^2)+(vector(3)^2));
    second = acosd(vector(3)/first);
    third = atand(abs(vector(2))/abs(vector(1)));
end

converted = [first second third];
disp("-------------------------");
disp(converted);
disp("-------------------------");
