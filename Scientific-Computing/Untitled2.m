vals_t=zeros(1,15);
vals_r=zeros(1,15);
vals_tr=zeros(1,15);
hs=zeros(1,15);
h=1;
x=sqrt(2);
x_hat=x-10^(-10);
for i=1:15
    h=h/10;
    hs(i)=h;

    vals_tr(i)=abs(((exp(x+h)-exp(x))/h)-exp(x)) ;
    vals_r(i)=abs(((exp(x+h)-exp(x))/h)-(exp(x_hat+h)-exp(x_hat))/h);
    vals_t(i)=abs(((exp(x_hat+h)-exp(x_hat))/h)-exp(x)) ;
       
end
%l=linspace(1,18,18);
loglog(hs,vals_t);
hold on
loglog(hs,vals_r);
hold on
loglog(hs,abs(vals_tr));