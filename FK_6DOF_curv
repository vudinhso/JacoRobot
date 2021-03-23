clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
D1=.2755;
D2=.41;
D3=.2073;
D4=.0741;
D5=.0741;
D6=.16;

beta=pi/3;
aa=pi/6;
sa=sin(aa);
s2a=sin(2*aa);

l1=D1;
l2=D2;
l3=D3+D4*(sa/s2a);
l4=D4*(sa/s2a)+D5*(sa/s2a);
l5=D5*(sa/s2a)+D6;

#DH parameters
a =     [0,0,l2,0,0,0,0]';
alpha = [0,pi/2,0,pi/2,beta,beta,0]';
d =     [l1,0,0,l3,l4,0,l5]';
theta = [0,0,0,pi/2,0,0,0]';

T = fcn_Tmatrix(a, alpha, d, theta); 
T_tot = T(:,:,1)
for i=2:length(a)
    T_tot=T_tot*T(:,:,i)
end
p_verif = [ l2+(l4+l5)*.866, ...
            0, ...
            l1-l3+(-l4+l5)*.5]'
