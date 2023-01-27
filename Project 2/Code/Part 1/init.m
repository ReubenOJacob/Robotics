clear all
close all
clc
load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
plot_output;
