function F = focP(t,u)
%Results array

L = 1;%Length Pendulum
g = 9.8;
omega = 1; %Natural Frequency

theta = 30; %degrees from North Pole

F = zeros(length(u),1);

F(1) = u(3); %vx
F(2) = u(4); %vy

F(3) = (-g * u(1))/L + 2 * u(4) * omega * cos(theta);
F(4) = (-g * u(2))/L + 2 * u(3) * omega * cos(theta);
