% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado d

t = 0:0.0001:2;
f_ini = 220;
f_final = 880;
dur = 2;

s = chirp(t,f_ini,dur,f_final);
[w,F] = espectro(t,s,dur);

L = 10000;            % Nº de muestras (elementos que cogemos del vector)
ventana = hamming(L);
figure('Name','ESPECTROGRAMA | Ventana: Hamming(10000)','NumberTitle','off');
spectrogram(s,ventana);

L = 0;
ventana2 = hamming(L);
figure('Name','ESPECTROGRAMA | Ventana: Hamming(0)','NumberTitle','off');
spectrogram(s,ventana2);