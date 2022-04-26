function [r] = signoIgual(num,m)

    r=(num>0 & m>0) | (num<0 & m<0);
end

