function [result] = matrizDominante(sistema,tam)
    suma=0;
    result=true;
    for i=1:tam
        for j=1:tam
            if i~=j
                suma=suma+sistema(i,j);
            end
        end
        if abs(suma)>sistema(i,i)
            result=false;
            break;
        end
        suma=0;
    end
end


