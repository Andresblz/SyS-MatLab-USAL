% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado c

t = 0:0.0001:2;
f_ini = 220;
f_final = 880;
dur = 2;

s = chirp(t,f_ini,dur,f_final);
[w,F] = espectro(t,s,dur);

L = 600;            % Nº de muestras (elementos que cogemos del vector)
ventana = hamming(L);
figure('Name','ESPECTROGRAMA | Ventana: Hamming(600)','NumberTitle','off');
spectrogram(s,ventana);
plot(ventana,s);

ventana2 = rectwin(L);
figure('Name','ESPECTROGRAMA | Ventana: Rectwin(600)','NumberTitle','off');
spectrogram(s,ventana2);