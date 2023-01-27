[P] = CalculatePosition();

t=P(10,:);

figure(2);
subplot(3,1,1);
plot(t, P(1,:));
title('Position Plot of end effector-X axis')
subplot(3,1,2);
plot(t, P(2,:));
title('Position Plot of end effector-Y axis')
subplot(3,1,3);
plot(t, P(3,:));
title('Position Plot of end effector-Z axis')

figure(3)
subplot(3,1,1);
plot(t, P(4,:));
title('Velocity Plot of end effector-X Axis');
subplot(3,1,2);
plot(t, P(5,:));
title('Velocity Plot of end effector-Y Axis');
subplot(3,1,3);
plot(t, P(6,:));
title('Velocity Plot of end effector-Z Axis');

figure(4);
subplot(3,1,1);
plot(t,P(7,:));
title('Acceleration Plot of end effector-X Axis')
subplot(3,1,2);
plot(t, P(8,:));
title('Acceleration Plot of end effector-Y Axis')
subplot(3,1,3);
plot(t, P(9,:));
title('Acceleration Plot of end effector-Z Axis')



figure(1)
plot3(P(1,:),P(2,:),P(3,:));
title('3D Trajectory')