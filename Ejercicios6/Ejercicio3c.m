% SESIÓN 6 - SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado c

[y,fs] = audioread('starwars.wav');
y = y(:,1);

a = miraudio('starwars.wav');
o = mironsets(a,'Attacks');
mirplay(o)

pause();

sg = mirsegment(a,o);
ac = mirautocor(sg); 
p = mirpitch(ac,'mono');

pause();

mirplay(p)
