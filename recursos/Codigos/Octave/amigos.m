n = 4;

suma_amigos = 0;

while (n < 1000)
    suma_div1 = 1;
    suma_div2 = 1;
    % Buscamos los divisores propios de n
    for r = 2:n/2
        if mod(n,r) == 0
            suma_div1 = suma_div1 + r;
        end
    end
    % Si n no es primo
    if suma_div1 > 1
        for r = 2:suma_div1/2
            if mod(suma_div1,r) == 0
                suma_div2 = suma_div2 + r;
            end
        end
        if suma_div2 == n && n ~= suma_div1
            n, suma_div1
            suma_amigos = suma_amigos + n + suma_div1;
        end
    end
    n = n + 1;
end
   
suma_amigos
