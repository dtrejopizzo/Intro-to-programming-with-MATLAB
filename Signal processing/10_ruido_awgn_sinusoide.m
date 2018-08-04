g=sin(2*pi*2*t);
g_ruido = awgn(g,20);
subplot(311)
% Comparar se�al limpia y se�al con ruido
plot(t,g);
subplot(312)
plot(t,g_ruido);
subplot(313)
plot(g,g_ruido)
% Representar las densidades espectrales de potencia
psd(g)
hold on
psd(g_ruido)
