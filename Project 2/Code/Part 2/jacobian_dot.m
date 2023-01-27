 
function JacobianD = jacobian_dot(q,velocity)

%a1=0.5;
%a2 = 0.5; 
%a3 = 0;
%a4 = 0;
%alpha1 = 0;
%alpha2 = 0; 
%alpha3 = 0;
%alpha4 = 0;  
%d1 = 0;
%d2 = 0;
%d4 = 0;
%theta1 = q(1);
% theta2 = q(2);
% d3 = q(3);
% theta4 = q(4); 

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
    
t1 = q(1);
t2 = q(2);
d3 = q(3);
t4= q(4);

t1d = velocity(1);
t2d = velocity(2);
d3dot = velocity(3);
t4d = velocity(4);


%Jacobian = [-a2*s12-a1*s1    -a2*s12   0  0; 
             %a2*c12+a1*c1      a2*c12  0  0; 
             %     0             0      1  0; 
             %    1             1      0  1];

JacobianD = [ -(cos(t1)*t1d)/2-(cos(t1 + t2)*(t1d + t2d))/2, -(cos(t1 + t2)*(t1d + t2d))/2, 0, 0;
              -(sin(t1)*t1d)/2 - (sin(t1 + t2)*(t1d + t2d))/2, -(sin(t1 + t2)*(t1d + t2d))/2, 0, 0
                   0,                                                 0,                      0, 0];




end