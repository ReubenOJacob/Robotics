%main code
clear all;
close all;
clc
Ts=0.001
load('kinematic_traj.mat');
run('plot_output_trajectory.m')

save('generated_traj.mat',"t","pd","pd_dot","pd_dot_dot")