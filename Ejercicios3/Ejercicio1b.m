% SESIÓN 3 - SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

% Para comprobar los valores de w y w_esp vamos a representar gráficamente
% mediante stem() y plot() los resultados obtenidos
[t,y,w,coef] = rectangular_c(5,0.5,5,-30,30,50,0);
figure('Name','stem(w,coef) [r] || plot(w_esp,F) [b]','NumberTitle','off');
stem(w,coef,'-r')

hold on
[w_esp,F] = espectro(t,y,5);
plot(w_esp,F,'-b')
hold off
