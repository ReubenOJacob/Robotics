clear all
close all
clc


load('kinematic_traj.mat');
clik_z_inverse;
sim('clik_z_inverse.mdl', t);
plot_output;
