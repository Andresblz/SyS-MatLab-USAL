% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado b

t = 0:0.0001:2;
f_ini = 220;
f_final = 880;
dur = 2;

s = chirp(t,f_ini,dur,f_final);
[w,F] = espectro(t,s,dur);

% 'spectogram' aplicará por defecto una ventana de tipo hamming de tamaño 
% N/8 con un overlapping del 50%
figure('Name','ESPECTROGRAMA','NumberTitle','off');
spectrogram(s);