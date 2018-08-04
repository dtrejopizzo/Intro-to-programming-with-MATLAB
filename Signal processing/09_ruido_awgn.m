% A�adir ruido WGN a una se�al cuadrada con SNR=15dB
t=0:0.01:10;
g = square(t);              % se�al cuadrada 
g_ruido = awgn(g,15);       % a�adir ruido, SNR = 15dB
plot(t,g_ruido)             % Representar se�al con ruido
% Representar las densidades espectrales de potencia
psd(g)
hold on
psd(g_ruido)
