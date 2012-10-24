suma_amigos = 0;
tic;
for N = 4:10000
    suma_div1 = 1;
    suma_div2 = 1;
    % Buscamos los divisores propios de N
    r = 1:N/2;
    n = N*ones(1,N/2);
    suma_div1 = sum(r(mod(n,r) == 0));
    % Si N no es primo
    if suma_div1 > 1
        r = 1:suma_div1/2;
        k = suma_div1*ones(1,suma_div1/2);
        suma_div2 = sum(r(mod(suma_div1,r) == 0));

        if suma_div2 == N && N ~= suma_div1
            N, suma_div1
            suma_amigos = suma_amigos + N + suma_div1;
        end
    end
end
suma_amigos
toc;
