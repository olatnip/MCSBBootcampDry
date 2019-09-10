function [nmax,z] = follow_z(z1,c)
%follow_z Takes in complex numbers and performs calculation
%   Uses complex numbers z1 and c and performs calculation
%   of z(n+1)=z(n)^2+c, then outputs nmax and z(1:n).

n=1;
z(1)=z1;

while (abs(z(n))<=2 && n<=22)
       z(n+1)=z(n)^2+c;
       n=n+1;
end

nmax=n;

end

