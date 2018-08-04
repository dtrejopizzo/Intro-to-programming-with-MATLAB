% Filtro paso de baja ideal mediante c�lculo simb�lico
syms t

% Dos se�ales sinusoides de entrada
w1 = 1000;
x1 = cos(2*pi*w1*t)
w2 = 1100;
x2 = cos(2*pi*w2*t)

% Funci�n de transferencia del filtro (escalon en frecuencia)
syms w
w_corte = 1001*2*pi;
H_pb = Heaviside(w+w_corte)-Heaviside(w-w_corte)

% Calcular las salidas en frecuencia como producto de transformadas
X1 = fourier(x1);
X2 = fourier(x2);
Y1 = X1*H_pb;
Y2 = X2*H_pb;

% Calcular salidas en el dominio del tiempo
y1 = ifourier(Y1)
y2 = yfourier(Y2)

% Representaci�n de las salidas respecto al tiempo
subplot(211)
ezplot(y1)
subplot(212)
ezplot(y2)
