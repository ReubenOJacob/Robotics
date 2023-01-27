clear all
close all
clc
vrclear
vrclose




load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
clik_transpose;
sim('clik_tranpose.slx', t);

addpath("..\visulalization\")
SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), false);
