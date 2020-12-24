% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado a

t = 0:0.0001:2;
f_ini = 220;
f_final = 880;
dur = 2;

s = chirp(t,f_ini,dur,f_final);
sound(s);
figure('Name','CHIRP','NumberTitle','off');
plot(t,s);

[w,F] = espectro(t,s,dur);
figure('Name','ESPECTRO','NumberTitle','off');
plot(w,abs(F));