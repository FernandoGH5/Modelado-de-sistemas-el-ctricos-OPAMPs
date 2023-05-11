clear all; close all; clc;

[t,x]=ode45(@opamp, [0 0.003], [0 0]);

figure(1)

plot(t,x(:,1),"k"); hold on;
grid on
title("OPAMP");
xlabel("Tiempo");
ylabel("Voltaje");