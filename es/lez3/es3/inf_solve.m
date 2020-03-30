function x=inf_solve(L,b)
% Risolve b=U*x con U triangolare inferiore
n=length(b);
x=zeros(n,1);
for i=1:n
    somma=0; % accumulatore
    for j=1:i-1
        somma=somma+L(i,j)*x(j);
    end
    x(i)=(b(i)-somma)/L(i,i);
end
end