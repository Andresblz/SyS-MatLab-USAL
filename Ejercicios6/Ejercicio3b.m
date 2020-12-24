% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado b

[y,fs] = audioread('starwars.wav');
y = y(:,1);
figure('Name','starwars.wav','NumberTitle','off');
plot(y);
% sound(y,fs);

L = 600;
ventana = hamming(L);
noverlap = L*0.9;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(600) - Overlapping (600*0.9)','NumberTitle','off');
spectrogram(y, ventana, noverlap, [], fs, 'yaxis');

L = 2000;
ventana = hamming(L);
noverlap = L*0.9;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(2000) - Overlapping (2000*0.9)','NumberTitle','off');
spectrogram(y, ventana, noverlap, [], fs, 'yaxis');


L = 600;
ventana = hamming(L);
noverlap = L*0.2;
figure('Name','ESPECTROGRAMA | Ventana: Hamming(600) - Overlapping (600*0.2)','NumberTitle','off');
spectrogram(y, ventana, noverlap, [], fs, 'yaxis');