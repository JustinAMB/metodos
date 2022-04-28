function [m] = tangente(f,a,b,it)
     
    m=zeros(it,7);
    
    for i=1:it
        m(i,1)=a;
        m(i,2)=subs(str2sym(f),a);
        m(i,3)=b;
        m(i,4)=subs(str2sym(f),b);
        m(i,5)=b - ((subs(str2sym(f),b)*(b-a)) / (subs(str2sym(f),b) - subs(str2sym(f),a)));
        m(i,6)=subs(str2sym(f),m(i,5));
        a=b;
        b=m(i,5);
        if i>1
            m(i,7)=abs((m(i,5)-m(i-1,5))/m(i,5))*100;
        end
    end   
end

