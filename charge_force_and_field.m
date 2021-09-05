%this program gets the force and the electric field intensity of two
%charges acting upon one another
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
charge1 = input("enter charge of first vector in nC: ");
charge2 = input("enter charge of second vector in nC: ");

force = (charge1e-9)*(charge2e-9);

