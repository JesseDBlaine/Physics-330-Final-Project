% Hyrum Taylor, Jesse Blaine, James Hecht
% Physics 330 Final Project
% Foucault Pendulum Simulator

%% Variables

x0 = 1; % initial x position
vx0 = 0; % initial x velocity
y0 = 0; % initial y position
vy0 = 0; % initial y velocity
g = -9.8; % gravity
L = 100; % length of pendulum string
lat = .7; % lattitude (approx for Provo) (equator is 0, poles are pi/2)
rot_earth = 2*pi/(60*60*24); % angular speed of earth

%% Function calls