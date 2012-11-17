function [valor, terminar, direccion] = eventos(t,r)
    valor = r(1) - 2; % buscamos ceros de esta función
    terminar = 1; % dejamos de integrar cuando encontramos un cero
    direccion = 1; % buscamos ceros cuando la función crece
end
