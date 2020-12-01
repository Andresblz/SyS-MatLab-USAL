% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado d

t=0:0.001:4;        % t = inicio:incremento:fin

w1=2*pi;
w2=6*pi;
w3=8*pi;

A1=1;
A2=-1/3;
A3=1/4; 

y=A1*cos(w1*t)+A2*cos(w2*t)+A3*cos(w3*t);


% ESPECTRO H3
w=0:0.001:10*pi;    % w = inicio:incremento:fin
figure('Name','ESPECTRO EN AMPLITUD','NumberTitle','off');
plot(w,abs(H3(w)))
figure('Name','ESPECTRO EN FASE','NumberTitle','off');
plot(w,angle(H3(w)))

% SEÑAL PASADO POR EL SISTEMA
y1=A1*abs(H3(w1))*cos(w1*t+angle(H3(w1)))+...
   A2*abs(H3(w2))*cos(w2*t+angle(H3(w2)))+...
   A3*abs(H3(w3))*cos(w3*t+angle(H3(w3)));

figure('Name','SEÑAL ORIGINAL [r] | SEÑAL SISTEMA [b]','NumberTitle','off');
hold on
plot(t,y,'r-')
plot(t,y1,'b-')
hold off
