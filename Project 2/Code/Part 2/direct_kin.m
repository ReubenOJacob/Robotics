function DKM =direct_kin(q)


% I  have hard coded the Direct Kinematics value , since syms function is taking too
% long to compute on my laptop.
%FROM DH TABLE

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

%From Simulink

%Cos(theta 1)
c1 = cos(q(1));
%Cos(theta1 + theta2)
c12 = cos(q(1) + q(2));
%Cos(theta1 + theta2+ theta4)
c124 = cos(q(1) + q(2) + q(4));
%Sin(theta1)
s1 = sin(q(1));
%Sin(theta1 + theta2)
s12 = sin(q(1) + q(2));
%Sin(theta1 + theta2+theta4)
s124 = sin(q(1) + q(2) + q(4));
d3=q(3);

DKM = [c124, -s124, 0, c12/2 + c1/2
      s124, c124, 0, s12/2 + s1/2
       0, 0, 1, 1 - d3
       0, 0, 0, 1];

end