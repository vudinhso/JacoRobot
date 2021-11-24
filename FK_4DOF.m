clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
l1=0.3;
l2=0.5;
l3=0.2+0.2;
#DH parameters
a =     [0,0,l2,0,0]';
alpha = [0,pi/2,0,pi/2,0]';
d =     [l1,0,0,0,l3]';
# theta = [0,0,0,0,0]';
theta = [0,0,pi/2,0,0]';

T = fcn_Tmatrix(a, alpha, d, theta);
T_tot = T(:,:,1)
for i=2:length(a)
    T_tot=T_tot*T(:,:,i)
end
T
T_tot
