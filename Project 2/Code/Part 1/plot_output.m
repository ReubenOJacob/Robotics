% %plot tracking


trackingX = tracking(:,1,:);
trackingY = tracking(:,2,:);
trackingZ = tracking(:,3,:);
trackingT = tracking(:,4,:);

trackingXchanged(:,1) = trackingX(1,1,:);
trackingYchanged(:,1) = trackingY(1,1,:);
trackingZchanged(:,1) = trackingZ(1,1,:);
trackingtchanged(:,1) = trackingT(1,1,:);

% plot error (tracking - desired position)

figure(1)
subplot(5,1,1); plot(t, trackingXchanged(:,1));title("X Coordinate Error")
subplot(5,1,2); plot(t, trackingYchanged(:,1));title("Y Coordinate Error")
subplot(5,1,3); plot(t, trackingZchanged(:,1));title("Z Coordinate Error")
subplot(5,1,4); plot(t, trackingtchanged(:,1));title("Angle Error")



q1fromworkspace = q(1,:,:);
q2fromworkspace  = q(2,:,:);
q3fromworkspace = q(3,:,:);
q4fromworkspace  = q(4,:,:);

q1newfromqworkspace(:,1) = q1fromworkspace(1,1,:);
q2newfromqworkspace(:,1) = q2fromworkspace (1,1,:);
q3newfromqworkspace(:,1) = q3fromworkspace (1,1,:);
q4newfromqworkspace(:,1) = q4fromworkspace (1,1,:);

%plotting q
figure(2)
subplot(5,1,1); plot(t, q1newfromqworkspace(:,1));title("Joint 1")
subplot(5,1,2); plot(t, q2newfromqworkspace(:,1));title("Joint 2")
subplot(5,1,3); plot(t, q3newfromqworkspace(:,1));title("Joint 3")
subplot(5,1,4); plot(t, q4newfromqworkspace(:,1));title("Joint 4")
