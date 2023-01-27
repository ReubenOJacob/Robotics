%plot tracking

%reshaping the matrix
trackingX = tracking(:,1,:);
trackingY = tracking(:,2,:);
trackingT = tracking(:,3,:);

trackingXnew(:,1) = trackingX(1,1,:);
trackingYnew(:,1) = trackingY(1,1,:);
trackingTnew(:,1) = trackingT(1,1,:);

% plot error (tracking - desired position)

figure(1)
subplot(4,1,1); plot(t, pd(:,1)-trackingXnew(:,1));title("X Coordinate Error")
subplot(4,1,2); plot(t, pd(:,2)-trackingYnew(:,1));title("Y Coordinate Error")
subplot(4,1,3); plot(t, pd(:,3)-trackingTnew(:,1));title("Angle Error")



q1fromworkspace = q(1,:,:);
q2fromworkspace = q(2,:,:);
q3fromworkspace= q(3,:,:);
q4fromworkspace = q(4,:,:);

q1fromworkspacenew(:,1) = q1fromworkspace(1,1,:);
q2fromworkspacenew(:,1) = q2fromworkspace(1,1,:);
q3fromworkspacenew(:,1) = q3fromworkspace(1,1,:);
q4fromworkspacenew(:,1) = q4fromworkspace(1,1,:);

%plotting q
figure(2)
subplot(5,1,1); plot(t, q1fromworkspacenew(:,1));title("Joint 1")
subplot(5,1,2); plot(t, q2fromworkspacenew(:,1));title("Joint 2")
subplot(5,1,3); plot(t, q3fromworkspacenew(:,1));title("Joint 3")
subplot(5,1,4); plot(t, q4fromworkspacenew(:,1));title("Joint 4")
