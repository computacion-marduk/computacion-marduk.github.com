s = 0;

for x = 1:1000
    if mod(x,3) == 0 && mod(x,5) == 0
        s = s + x;
    end
end
s
