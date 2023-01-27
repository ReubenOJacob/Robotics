%plot tracking

%Plotting graphs for Transpose

sim('clik_transpose',4)
open_system('clik_transpose')

 theta1= q_out(:, 1);
 theta2= q_out(:, 2);
      d = q_out(:, 3);
 theta4=q_out(:, 4);

figure(1)
subplot(4,1,1); plot(t,pd(:,1)-tracking(:,1));  title("Error of x of Transpose")
subplot(4,1,2); plot(t,pd(:,2)-tracking(:,2)); title("Error of y of Tranpose")
subplot(4,1,3); plot(t,pd(:,3)-tracking(:,3)); title("Error of z Transpose")
subplot(4,1,4); plot(t,theta_d(:,1)-tracking(:,4)); title("Error of theta of Transpose")


figure;
subplot(4,1,1)
plot(t,pd(:,1))
title('Trajectory of Transpose')
ylabel('pd1')

subplot(4,1,2)
plot(t,pd(:,2))
ylabel('pd2')

subplot(4,1,3)
plot(t,pd(:,3))
ylabel('pd3')

subplot(4,1,4)
plot(t,theta_d)
ylabel('theta')
xlabel('time')


%Plotting graphs for Inverse

sim('clik_inverse',4)
open_system('clik_inverse')

 theta1= q_out(:, 1);
 theta2= q_out(:, 2);
      d = q_out(:, 3);
 theta4=q_out(:, 4);

figure(1)
subplot(4,1,1); plot(t,pd(:,1)-tracking(:,1));  title("Error of x of Inverse")
subplot(4,1,2); plot(t,pd(:,2)-tracking(:,2)); title("Error of y of Inverse")
subplot(4,1,3); plot(t,pd(:,3)-tracking(:,3)); title("Error of z Inverse")
subplot(4,1,4); plot(t,theta_d(:,1)-tracking(:,4)); title("Error of theta of Inverse")


figure;
subplot(4,1,1)
plot(t,pd(:,1))
title('Trajectory of Inverse')
ylabel('pd1')

subplot(4,1,2)
plot(t,pd(:,2))
ylabel('pd2')

subplot(4,1,3)
plot(t,pd(:,3))
ylabel('pd3')

subplot(4,1,4)
plot(t,theta_d)
ylabel('theta')
xlabel('time')







