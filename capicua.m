n=input('Ingrese posiciones para cargar un vector: ');

for(i 1:n)

v1=randi([0 10],1,n);
auxV1=fliplr(v1);

if(v1==auxV1)
fprintf('V1 es capicua');
else
frpintf('V1 no es capicua');
end
