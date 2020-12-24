% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a

[y1,fv] = audioread('violinA.wav');
y1 = y1(:,1);                       % Estéreo -> 1 canal
figure('Name','violinA.wav','NumberTitle','off');
plot(y1);
sound(y1,fv);

[y2,fp] = audioread('pianoA.wav');
y2 = y2(:,1);
figure('Name','pianoA.wav','NumberTitle','off');
plot(y2);
sound(y2,fp);

[y3,ff] = audioread('flautaA.wav');
y3 = y3(:,1);
figure('Name','flautaA.wav','NumberTitle','off');
plot(y3);
sound(y3,ff);

% ESPECTROS
[w1,F1] = espectro_s(y1,fv);
figure('Name','ESPECTRO | VIOLIN [r] - PIANO [b] - FLAUTA [g]','NumberTitle','off');
plot(w1,abs(F1),'-r');

hold on
[w2,F2] = espectro_s(y2,fp);
plot(w2,abs(F2),'-b');

[w3,F3] = espectro_s(y3,ff);
plot(w3,abs(F3),'-g');
hold off