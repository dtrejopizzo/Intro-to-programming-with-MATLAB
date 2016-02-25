clear all
clc

A=[];
i=1;
while i<10000
	if isprime(i)==1
		A=[A,i];
	end
	i=i+1;
end

t=length(A);

A(t)
