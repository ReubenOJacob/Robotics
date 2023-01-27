%dh parameters
    % di αi θi ai
%Link1 0 0 θ1 a1
%Link2 0 0 θ2 a2
%Link3 d3 0 0 0
%Link4 0 0 θ4 0

function DKM = direct_kin(u)

% I  have hard coded the Direct Kinematics value , since syms function is taking too
% long to compute on my laptop.
        
%a1=0.5;
%a2 = 0.5;

%From Simulink

%Cos(theta 1)
c1 = cos(u(1));
%Sin(theta1)
s1 = sin(u(1));
%Cos(theta1 + theta2)
c12 = cos(u(1) + u(2));
%Sin(theta1 + theta2)
s12 = sin(u(1) + u(2));


%d3=u(3);

DKM=  [0.5*c12+0.5*c1;
       0.5*s12+0.5*s1;
              u(3);
    u(1)+u(2)+u(4)];

end
