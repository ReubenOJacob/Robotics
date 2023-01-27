 

function JZrelax= jacobian_z_relax(q)


a1 = 0.5;
a2 = 0.5;

%cos (theta1)
c1 = cos(q(1));
%sin (theta1)
s1 = sin(q(1));
%cos(theta1 + theta2)
c12 = cos(q(1)+q(2));
%sin(theta1 + theta2)
s12 = sin(q(1)+q(2));

JZrelax = [-a2*s12-a1*s1    -a2*s12   0  0; 
            a2*c12+a1*c1      a2*c12   0  0;
                  1             1      0  1];
end