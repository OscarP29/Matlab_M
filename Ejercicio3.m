clc;
clear;
vector_a = [];

for i=1:4
    texto = sprintf("Ingrese el valor numero %d del vector: ",i);
    numero = input(texto);
    vector_a = [vector_a,numero];
    i = i + 1;
end
n = input("Ingrese para x: ");

function y = p(x,a)
   y = (a(1)+x.*(a(2)+x.*(a(3)+a(4).*x)));
end

valor = p(n,vector_a);
fprintf("El polinomio evaluado en %.2f tiene un valor de %.2f",n,valor);
