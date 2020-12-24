% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 0
% Apartado a-b

fs = 2000;
dt = 1/(2*pi*fs);
freq = 440;
T = 1/freq;
NCycles = 3;
t = 0:dt:NCycles*T;
y = 2*sin(2*pi*freq*t+0);

figure('Name','SEÑAL EN EL DOMINIO DEL TIEMPO','NumberTitle','off');
plot(t,y);
[w,F] = espectro(t,y,T);
figure('Name','ESPECTRO DE LA SEÑAL','NumberTitle','off');
plot(w,abs(F));