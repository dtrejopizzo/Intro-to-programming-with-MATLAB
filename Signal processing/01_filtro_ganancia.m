% Ejemplo de definición de un LTI (Amplificador ideal de ganancia 1/3)
X = 3
Y = 1
lti1 = tf(Y,X)       % tf define un sistema LTI
step(lti1)           % representar respuesta a escalón
pause                % esperar tecla
impulse(lti1)        % representar respuesta impulsiva
pause
freqresp(lti1,1)     % respuesta en frecuencia = 1 rad.
pause
bode(lti1)
