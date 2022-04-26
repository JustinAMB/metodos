function [m] = puntoFijo(f,it)
%     f='0.4*exp(1)^(x^2)';
%     it=10;
    m=zeros(it,3);
    m(1,1)=1;
    m(1,2)=0;
    m(1,3)=0;
    for i=2:it
        m(i,1)=i;
        m(i,2)=subs(str2sym(f),m(i-1,2));
        m(i,3)=abs((m(i,2)-m(i-1,2))/m(i,2))*100;
    end
    %disp(m);
end

