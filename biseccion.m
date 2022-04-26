function [m] = biseccion(f,a,b,it)
 
%     a=0;
%     b=1;
%     it=6;
%     f='(exp(1)^x)-sin(3*x)-2';
    mi=0;
    disp(exp(1));
    m=zeros(it,7);
    
    for i=1:it
        m(i,1)=a;
        disp(m(i,1));
        m(i,2)=subs(str2sym(f),a);
        m(i,3)=b;
        m(i,4)=subs(str2sym(f),b);
        mi=mi+((b-a)/2);
        m(i,5)=mi;
        m(i,6)=subs(str2sym(f),m(i,5));
        if signoIgual(m(i,6),m(i,2))==0
            
            b=m(i,5);
        end
        if signoIgual(m(i,6),m(i,4))==0
            
            a=m(i,5);
        end
        if i>1
            m(i,7)=abs((m(i,5)-m(i-1,5))/m(i,5))*100;
        end
    end 
    disp(m);
end

