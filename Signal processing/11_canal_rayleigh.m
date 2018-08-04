% Paso de una se�al por un canal con modelo de fading de Rayleigh
t = 0:0.001:10;
x = square(t);
% Crear un objeto canal que sigue un modelo de Rayleigh
% frec. de muestreo: 1KHz, M�ximo desplazamiento Doppler: 20Hz
c = rayleighchan(1/1000,20); 
% ver las propiedades del canal
c                      
% la se�al x atraviesa el canal c
y = filter(c,x);
% y es complejo!
plot(abs(y))
plot(unwrap(angle(y)))
