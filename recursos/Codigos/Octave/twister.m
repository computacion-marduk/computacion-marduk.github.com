pkg load odepkg

g = 1;
s = [1.0;0.0;pi/2;0.0]; % s=[r0;rp0;q0;qp0]

%m1 = m2
ec_r = @(t,r) [r(2);0.5*(r(1)*r(4)^2+g*cos(r(3)));r(4);-1/r(1)*(2*r(2)*r(4)+g*sin(r(3)))];

opciones = odeset('Events', @eventos);

[t,sol] = ode45(ec_r,[0:0.01:10],s,opciones);

t(end)

plot(t,sol(:,3))
