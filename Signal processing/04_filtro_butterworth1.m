% Filtro Butterworth de orden 3
orden = 3;
w_corte = 1000;
[Y, X] = butter(orden,w_corte,'s')     % ¿'s'? ver help butter
b = tf(Y,X)
ltiview(b)
