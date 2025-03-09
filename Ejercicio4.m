clear;
clc;
x = linspace(-10,10,200);
fun = input("Introduzca la funcion a graficar: ","S");
f = inline(fun);
y = f(x);
plot(x,y,"k");
xlabel("Eje X"),ylabel("Eje Y");
title(fun);
