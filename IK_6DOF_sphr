clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
#{
D1=.2755;
D2=.41;
D3=.2073;
D4=.0741;
D5=.0741;
D6=.16;
#}
D1=.3;
D2=.4;
D3=.2;
D4=.2;
D5=.2;
D6=.2;
#DH parameters
b=pi/2;
a =     [0,0,D2,0,0,0,0]';
alpha = [0,b,0,b,-b,-b,0]';
d =     [D1,0,0,D3+D4,0,0,D5+D6]';
theta = [0,0,0,0,-b,-b,0]';

T = fcn_Tmatrix(a, alpha, d, theta); 
T_tot = T(:,:,1);
for i=2:length(a)
    T_tot=T_tot*T(:,:,i);
end

#p=T_tot*inv(T(:,:,7))(:,4);
#p=p(1:3);
p=[0.4, 0, .3]';
p_plane = [sqrt(p(1)^2+p(2)^2),0,p(3)]';

p1=[0,0,D1]'
p2=p_plane

p1=p1([1,3])
p2=p2([1,3])

[pa, pb] = fcn_circcirc(p1, p2, D2, D3+D4)
pa = pa - [0,0,D1]'
pb = pb - [0,0,D1]'
th1  = atan(p(2)/p(1))
th2a = atan(pa(3)/pa(1))
th2b = atan(pb(3)/pb(1))
