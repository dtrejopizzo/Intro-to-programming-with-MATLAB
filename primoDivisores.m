%%%% Ejercicio primos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all % limpia la variables que quedaban de otros programas
clc % limpia la pantalla

% a) Crear el vector A con numeros aleatorios enteros entre 1 y 100
A=randi([1 100],1,30)

for i=15:1:30

	k = 2;
	n=A(i);
	while k<=n
		if rem(n,k) == 0
			break;
		end
		k++;	
	end
	if (rem (n, k) == 0 && k==n)
		printf("El menor divisor propio de %d es %d \n", n, k);
		printf(" %d es primo\n", n);
	else
		printf("El menor divisor propio de %d es %d \n", n, k);	
		printf(" %d no es primo\n", n);
	end

end
