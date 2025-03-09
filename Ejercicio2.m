clear;
clc;
while true
    num = input("Ingrese en numero: ");
    raiz = power(num,1/2);
    fprintf("El la raiz del numero es %f\n",raiz);
    if num == -1
        clear;
        clc;
        disp("Fin del programa");
        break;
    end
    
end