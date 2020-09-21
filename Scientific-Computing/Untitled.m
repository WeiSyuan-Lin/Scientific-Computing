%sin(x) x=0
vals=zeros(1,18);
h=1;
for i=1:18
    h=h/10;
    vals(i)=abs(((sin(pi+h)-sin(pi))/h)-cos(pi)) ;
end
l=linspace(1,18,18);
semilogy(l,vals);