% SESIÓN 5 - SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a

f=442;              % Frecuencia de 'LA'
A=1;
duration=10*2/f;    % Reemplazar por duration=100*2/f para escuchar más tiempo
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