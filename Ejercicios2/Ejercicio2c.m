% SESIÓN 2 - SEÑALES Y SISTEMAS 
% Ejercicio 2
% Apartado c

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% V = 5 
% τ = 0.5
% T = 1
% tmin = -3 || tmax = 3
% m = 10
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,10);

% Mostramos los coeficientes obtenidos
coef
