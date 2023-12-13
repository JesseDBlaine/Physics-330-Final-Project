% Hyrum Taylor, Jesse Blaine, James Hecht
% Physics 330 Final Project
% Foucault Pendulum Simulator

%% Variables

clear;
close all;

% x0 = 1; % initial x position (m)
% vx0 = 0; % initial x velocity (m/s)
% y0 = 0; % initial y position (m)
% vy0 = 0; % initial y velocity (m/s)
g = -9.8; % gravity (m/s^2)
L = 100; % length of pendulum string (m)

lat = .7; % lattitude (approx for Provo) (equator is 0, poles are pi/2) (rad)
theta = pi/2 - lat;
rot_earth = 2*pi/(60*60*24); % angular speed of earth (rad/sec)

%% Function calls

%Initial values matrix
u0 = zeros(4,1);

u0(1) = 0; %x0
u0(2) = 0; %y0
u0(3) = 1; %vx0
u0(4) = 0; %vy0


%Set up ODE 

options = odeset('RelTol',1e-5);

%Solve
ode45(@focP,0:.1:1000,u0,options)

%Unload
x = u(1);
y = u(2);
vx = u(3);
vy = u(4);


%% Graphing

close all;

dt=.1;
time_watching = 100;
t = 0:dt:time_watching;
% x = interpn(,,,'spline'); % for when we get the ODE45 data

theta = .01*cos(t); % These are temporary for working on the graphing feature
phi = .01*sin(t);

x = L*sin(theta).*cos(phi); % transform from spherical to cartesian
y = L*sin(theta).*sin(phi);
z = L*(1-cos(theta));

figure; % plot the path traced by the pendulum
plot(x,y,'b-')
xlabel("X")
ylabel("Y")
title("Path traced by pendulum")
grid on;

figure;
for k = 1:length(t) % animation for the pendulum swinging
    plot3([0,x(k)],[0,y(k)],[L,z(k)], x(k),y(k),z(k), 'square')
    xlim([-2,2])
    ylim([-2 2])
    zlim([0 100])
    xlabel("X")
    ylabel("Y")
    zlabel("Z")
    title("Foucault Pendulum")
    grid on;

    pause(dt-.05)
end
