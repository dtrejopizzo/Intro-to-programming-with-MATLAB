%%%% Ejercicio 3: matrices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

%Ingreso m y n
m=input('Ingrese cantidad de filas para las matrices: ');
n=input('Ingrese cantidad de columnas para las matrices: ');

% a) Crear matriz B de m*n con zeros
B=zeros(m,n)

% b) Crear matriz A con numeros enteros entre 1 y 10
A=randi([1 10],m,n)

% c) Intercambiar dos filas de A (ingresar por teclado cuales)

fprintf('La matriz A tiene %d filas para intercambiar\n',m);

f1=input('Ingrese una fila para intercambiar: ');
if(f1>m)
f1=input('Ingrese una fila para intercambiar: ');
end

f2=input('Ingrese otra fila para intercambiar: ');
if(f2>m)
f2=input('Ingrese otra fila para intercambiar: ');
end

F1=A(f1,:);
F2=A(f2,:);

C=A;
C(f1,:)=F2;
C(f2,:)=F1;

% d) Intercambiar dos columnas de A (ingresar por teclado cuales)

fprintf('La matriz A tiene %d columnas para intercambiar\n',n);

c1=input('Ingrese una columna para intercambiar: ');
if(c1>n)
c1=input('Ingrese una columna para intercambiar: ');
end

c2=input('Ingrese otra columna para intercambiar: ');
if(c2>m)
c2=input('Ingrese otra columna para intercambiar: ');
end

C1=A(:,c1);
C2=A(:,c2);

D=A;
D(:,c1)=C2;
D(:,c2)=C1;

% e) Sumar dos filas de A (ingresar por teclado cuales) y guardarlas en una fila de B

fprintf('La matriz A tiene %d filas para elegir\n',m);

fila1=input('Ingrese una fila para sumar: ');
if(fila1>m)
fila1=input('Ingrese una fila para sumar: ');
end

fila2=input('Ingrese otra fila para sumar: ');
if(fila2>m)
fila2=input('Ingrese otra fila para sumar: ');
end

filaB=input('Ingrese fila de B donde guardar la suma: ');

B(filaB,:)=A(fila1,:)+A(fila2,:);

% f) Sumar dos columnas de A y dejarlas en la columna 1 de B

col1=input('Ingrese una columna para sumar: ');
if(col1>m)
col1=input('Ingrese una columna para sumar: ');
end

col2=input('Ingrese otra columna para sumar: ');
if(col2>m)
col2=input('Ingrese otra columna para sumar: ');
end

B(:,1)=A(:,col1)+A(:,col2);

% g) Multiplicar una fila dada de A por un factor

filaAmult=input('Ingrese la fila de A a multiplicar: ');
factorMult=input('Ingrese el factor para multiplicar la fila de A: ');

G=A;
G=A(filaAmult,:)*factorMult;

% h) Multiplicar una columna dada de A por un factor

columnaAmult=input('Ingrese la columna de A a multiplicar: ');
factorMultCol=input('Ingrese el factor para multiplicar la columna de A: ');

H=A;
H=A(:,columnaAmult)*factorMultCol;








