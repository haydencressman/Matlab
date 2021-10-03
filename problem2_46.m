%   M-File: MLP0246
%
%   Modify ML0207 to calculate the potential
%   difference going from the origin (O) to the point
%   R(5,0,0) given a pair of point charges
%   Q1(0,-5,0)=1nC and Q2(0,5,0)=2nC.
%
%   The approach will be to break up the distance
%   from O to R into k sections.  The total field E will
%   be found at the center of each section (located 
%   at point P) and then dot(Ep,dLv) will give the
%   potential drop across the kth section.  Total
%   potential is found by summing the potential drops.
%
%   Wentworth, 1/7/03
%
%   Variables:
%       Q1,Q2   the point charges, in nC  
%       k       number of numerical integration steps
%       dL      magnitude of one step
%       dLv     vector for a step
%       x(n)    x location at center of section at P
%       R1,R2   vector from Q1,Q2 to P
%       E1,E2   electric fields from Q1 & Q2 at P
%       Etot    total electric field at P
%       V(n)    portion of dot(Etot,dL) at P

clc     %clears the command window
clear   %clears variables

%   Initialize variables
k=64;
Q1=1;
Q2=2;
dL=5/k;
dLv=dL*[1 0 0];


%   Perform calculation
for n=1:k
    x(n)=(n-1)*dL+dL/2;
    R1=[x(n) 5 0];
    R2=[x(n) -5 0];
    Rmag1=sqrt((R1(1)^2)+(R1(2)^2)+(R1(3)^2));
    Rmag2=sqrt((R2(1)^2)+(R2(2)^2)+(R2(3)^2));
    E1=9*Q1*R1/Rmag1^3;
    E2=9*Q2*R2/Rmag2^3;
    Etot=E1+E2;
    V(n)=dot(Etot,dLv);
end

Vtot=sum(-V)
