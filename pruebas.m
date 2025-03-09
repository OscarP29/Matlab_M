w = [1 2 3; 3 2 1; 5 3 4]; %Esto es una matriz
n = 2; %Esto es un variable 
t = 2;
z = n + t; %Suma de variables
disp("hola"); %Se usa para imprimir en pantalla una sola cosa como variables o un texto/// Para arrojaar resultados
fprintf("%d + %d = %d\n",n,t,z) %Este muestra cadenas entre numeros y letras, lo que sigue despues de "%"en este caso d define el formato por ejemplo f es decimales
input("Xd"); %para pedir informacion al usuario
if z == 5
    disp("Got4y")
else
    disp("no goty")
end %En los if hay que poner en el end para saber donde finaliza
for i=1:10
    disp(i); %El for es mas o menos como en toda la programacion, solo cambia la manera en la que se especifica
end
a = 1
while i < 11 %En el while se tiene que declarar la varible antes y sobre todo mostrar el imcremento para que puedea finalizar
    disp(i)
    i=i+1;
end
function [a,p]=tri(b,h)
a = (b*h)/2;
p = b*3;
end

fa = @(b,h)(b*h)/2; %Esto es una funcion lamda, anonima, ptimero se le ponen los parametros y despues lo que hace
disp(fa(2,3)); %se llama y se le pasan los valores

xd = input("Ingrese f(x) ","S");
f = inline(xd);
x= input("Variable de valuacion ");
disp(f(x));



