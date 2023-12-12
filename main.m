% Hyrum Taylor, Jesse Blaine, James Hecht
% Physics 330 Final Project
% Foucault Pendulum Simulator

%% Variables

x0 = 1; % initial x position (m)
vx0 = 0; % initial x velocity (m/s)
y0 = 0; % initial y position (m)
vy0 = 0; % initial y velocity (m/s)
g = -9.8; % gravity (m/s^2)
L = 100; % length of pendulum string (m)
lat = .7; % lattitude (approx for Provo) (equator is 0, poles are pi/2) (rad)
rot_earth = 2*pi/(60*60*24); % angular speed of earth (rad/sec)

%% Function calls