% SESIÓN 5 - SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCIÓN espectro.m
% [w,F]=espectro(t,x,P)

f=442;              % Frecuencia de 'LA'
A=1;
duration=100*2/f;   % Reemplazar por duration=100*2/f para escuchar más tiempo
fs=2000*pi*2;       % Frecuencia de muestreo
t=0:1/fs:duration;

% Tres armonicos con el sonido 'LA'
s1 = A*1*cos(2*pi*f*t);
s2 = A*0.5*cos(2*2*pi*f*t);
s3 = A*0.2*cos(3/2*2*pi*f*t);
y = (s1 + s2 + s3);
sound(y,fs);

figure('Name','DOMINIO DEL TIEMPO','NumberTitle','off');
plot(t,y)

% Para calcular el periodo de la función espectro:
% 1*442, 2*442, 3/2*442 --> 2, 4, 3 --> 2/442 
[w,F]=espectro(t,y,0.0045);
figure('Name','ESPECTRO','NumberTitle','off');
plot(w,abs(F));

% Muestra la figura de cerca con los valores en 
% x (-6500 6500) -- y (0 2.7*10^-3)
axis([-6500 6500 0 2.7*10^-3]);