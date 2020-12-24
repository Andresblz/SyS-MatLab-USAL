% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado e

t = 0:0.0001:2;
f_ini = 220;
f_final = 880;
dur = 2;

s = chirp(t,f_ini,dur,f_final);
[w,F] = espectro(t,s,dur);

L = 2000;               % Nº de muestras
ventana = hamming(L);
porcentaje = 0.25;      % Entre 0 y 1
noverlap = L*porcentaje;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(2000) | Overlapping (2000*0.25)','NumberTitle','off');
spectrogram(s,ventana,noverlap);

porcentaje = 0.5;      % Entre 0 y 1
noverlap = L*porcentaje;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(2000) | Overlapping (2000*0.5)','NumberTitle','off');
spectrogram(s,ventana,noverlap);

porcentaje = 0.75;      % Entre 0 y 1
noverlap = L*porcentaje;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(2000) | Overlapping (2000*0.75)','NumberTitle','off');
spectrogram(s,ventana,noverlap);