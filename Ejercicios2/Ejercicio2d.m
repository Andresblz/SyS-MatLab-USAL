% SESIÓN 2 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado d

% FUNCIÓN rectangular_b.m
% [t,y,w,coef]=rectangular_b(V,tau,T,tmin,tmax,m,t0)

% V = 5
% τ = 0.5
% T = 1
% tmin = -3 || tmax = 3
% m = 10
% t0 = 0.7
[t,y,w,coef]=rectangular_b(5,0.5,1,-3,3,10,0.7);
figure('Name','Diferencia con t0','NumberTitle','off');
plot(t,y);

hold on
[t,y,w,coef]=rectangular_b(5,0.5,1,-3,3,10,0);
plot(t,y);
hold off

% Mostramos los coeficientes
coef
