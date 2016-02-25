clear all
clc

n=input('Ingrese numero: ');

if(n>0){
            int numero = n, suma=0, divisor=1;
            while(divisor<numero){
                if(numero%divisor==0){
                    fprintf('El numero %d es divisor\n',divisor);
                    suma=suma+divisor;
                }
                divisor++;
            }
            if(suma==numero){
                fprintf('El numero es abundante\n');
            }
            else{
                fprintf('El numero no es abundante\n');
            }
 
