% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado a

[y1,fv] = audioread('violinA.wav');
y1 = y1(:,1);
figure('Name','violinA.wav','NumberTitle','off');
plot(y1);
sound(y1,fv);

[auto_corr_y,lags] = xcorr(y1(1000:60000));
m_correlacion = max(auto_corr_y);
disp("La mayor correlacion es: " + m_correlacion);

pitch_fundamental = 1/m_correlacion;
disp("La frecuencia fundamental es: " + pitch_fundamental);