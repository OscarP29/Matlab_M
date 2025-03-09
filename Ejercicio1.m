clc;
clear;

matriz = [1 2 3; 1 -2 4; 0 -2 1];

vector = [2; 7; 3];

metodo = input("Elegir metodo para resolver el sistema (1: Determinantes (Regla de Cramer)) o (2: Método de matriz inversa): ");

while metodo ~= 1 && metodo ~= 2
    metodo = input("Elija una entrada valida (1: Determinantes) o (2: Gauss-Jordan): ");
end

determinante_m = matriz(1,1)*(matriz(2,2)*matriz(3,3) - matriz(2,3)*matriz(3,2))  ...
    -  matriz(1,2)*(matriz(2,1)*matriz(3,3) - matriz(2,3)*matriz(3,1))  ...
    +  matriz(1,3)*(matriz(2,1)*matriz(3,2) - matriz(2,2)*matriz(3,1));


if determinante_m == 0
    disp('No se puede resolver el sistema de ecuaciones o tiene infinitas soluciones');
else

    if metodo == 1

        matriz_a = matriz;
        matriz_b = matriz;
        matriz_c = matriz;

        matriz_a(:,1) = vector;
        matriz_b(:,2) = vector;
        matriz_c(:,3) = vector;

        determinante_m_a = matriz_a(1,1)*(matriz_a(2,2)*matriz_a(3,3) - matriz_a(2,3)*matriz_a(3,2)) ...
            - matriz_a(1,2)*(matriz_a(2,1)*matriz_a(3,3) - matriz_a(2,3)*matriz_a(3,1)) ...
            + matriz_a(1,3)*(matriz_a(2,1)*matriz_a(3,2) - matriz_a(2,2)*matriz_a(3,1));

        determinante_m_b = matriz_b(1,1)*(matriz_b(2,2)*matriz_b(3,3) - matriz_b(2,3)*matriz_b(3,2)) ...
            - matriz_b(1,2)*(matriz_b(2,1)*matriz_b(3,3) - matriz_b(2,3)*matriz_b(3,1)) ...
            + matriz_b(1,3)*(matriz_b(2,1)*matriz_b(3,2) - matriz_b(2,2)*matriz_b(3,1));

        determinante_m_c = matriz_c(1,1)*(matriz_c(2,2)*matriz_c(3,3) - matriz_c(2,3)*matriz_c(3,2)) ...
            - matriz_c(1,2)*(matriz_c(2,1)*matriz_c(3,3) - matriz_c(2,3)*matriz_c(3,1)) ...
            + matriz_c(1,3)*(matriz_c(2,1)*matriz_c(3,2) - matriz_c(2,2)*matriz_c(3,1));

        x = determinante_m_a/determinante_m;
        y = determinante_m_b/determinante_m;
        z = determinante_m_c/determinante_m;

        fprintf("lassoluciones son: x = %f, y = %f, z = %f", x, y, z);

    else
        M_Cofactores = zeros(3,3);
        M_Cofactores(1,1) =  (matriz(2,2)*matriz(3,3) - matriz(2,3)*matriz(3,2));
        M_Cofactores(1,2) = -(matriz(2,1)*matriz(3,3) - matriz(2,3)*matriz(3,1));
        M_Cofactores(1,3) =  (matriz(2,1)*matriz(3,2) - matriz(2,2)*matriz(3,1));

        M_Cofactores(2,1) = -(matriz(1,2)*matriz(3,3) - matriz(1,3)*matriz(3,2));
        M_Cofactores(2,2) =  (matriz(1,1)*matriz(3,3) - matriz(1,3)*matriz(3,1));
        M_Cofactores(2,3) = -(matriz(1,1)*matriz(3,2) - matriz(1,2)*matriz(3,1));

        M_Cofactores(3,1) =  (matriz(1,2)*matriz(2,3) - matriz(1,3)*matriz(2,2));
        M_Cofactores(3,2) = -(matriz(1,1)*matriz(2,3) - matriz(1,3)*matriz(2,1));
        M_Cofactores(3,3) =  (matriz(1,1)*matriz(2,2) - matriz(1,2)*matriz(2,1));

        t_cofactores = zeros(3,3);
        for i = 1:3
            for j = 1:3
                t_cofactores(j,i) = M_Cofactores(i,j);
            end
        end

        m_inversa = zeros(3,3);
        for i = 1:3
            for j = 1:3
                m_inversa(i,j) = (1 / determinante_m) * t_cofactores(i,j);
            end
        end


        soluciones = m_inversa * vector;
        fprintf("Las soluciones son: x = %f, y = %f, z = %f\n", soluciones(1), soluciones(2), soluciones(3));


    end
end







