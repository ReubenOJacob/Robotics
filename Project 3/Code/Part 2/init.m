clear all
close all
clc
vrclear
vrclose

load('generated_traj.mat');
control;
sim('control.slx', t_data);
q = transpose(q);



e_dot = transpose(e_dot(:,:));
figure("Name","e_dot vs Time")
subplot(5,1,1); plot(t_data, e_dot(:,1));
ylabel("x");
xlabel("t")
subplot(5,1,2); plot(t_data, e_dot(:,2));
ylabel("y"); 
xlabel("t")
subplot(5,1,3); plot(t_data, e_dot(:,3));
ylabel("z"); 
xlabel("t")
subplot(5,1,4);

q = transpose(q(:,:));
figure("Name","e_dot vs Time")
subplot(5,1,1); plot(t_data, q(:,1));
ylabel("x");
xlabel("t")
subplot(5,1,2); plot(t_data, q(:,2));
ylabel("y"); 
xlabel("t")
subplot(5,1,3); plot(t_data, q(:,3));
ylabel("z"); 
xlabel("t")
subplot(5,1,4);

e = transpose(e(:,:));
figure("Name","Error Plot vs Time")
subplot(5,1,1); plot(t_data, e(:,1));
ylabel("x error "); 
xlabel("t")
subplot(5,1,2); plot(t_data, e(:,2));
ylabel("y error "); 
xlabel("t")
subplot(5,1,3); plot(t_data, e(:,3));
ylabel(" z error"); 
xlabel("t")
subplot(5,1,4);