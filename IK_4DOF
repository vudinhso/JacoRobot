clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
D1=.3;
D2=.5;
D3=.2;
D4=.2;
l1=D1;
l2=D2;
l3=D3+D4;
#DH parameters
a =     [0,0,l2,0,0]';
alpha = [0,pi/2,0,pi/2,0]';
d =     [l1,0,0,0,l3]';
theta = [pi/3,pi/3,pi/6,0,0]';

# FwdKin
T = fcn_Tmatrix(a, alpha, d, theta); 
T_tot = T(:,:,1);
for i=2:length(a)
    T_tot=T_tot*T(:,:,i);
end

# InvKin
Tf = T_tot
x = Tf(1,4);
y = Tf(2,4);
z = Tf(3,4);
# Determination of th1, two solutions
th1 = atan2(y,x)
# Determination of th3
# Dont forget the z-offset
# Dont forget that for the DH parameter, X3 is not along the link, thus -pi/2
ztmp = z-l1;
c3  = (x^2+y^2+ztmp^2-l2^2-l3^2)/(2*l2*l3);
u = atan2(sqrt(1-c3^2),c3)
# u = acos(c3
phi = atan2(ztmp, sqrt(x^2+y^2));
bet = atan2(l3*sin(u), l2+l3*cos(u));
th2 = phi+bet
th3 =-u+pi/2


#{
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

#}
