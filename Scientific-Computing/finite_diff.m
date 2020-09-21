vals_t=zeros(1,15);
vals_r=zeros(1,15);
vals_tr=zeros(1,15);
vals_tr_bd=zeros(1,15);
vals_r_bd=zeros(1,15);
hs=zeros(1,15);
h=1;
x=sqrt(2);
x_hat=x-10^(-10);
for i=1:15
    h=h/10;
    hs(i)=h;

    %vals_tr(i)=abs(((exp(x+h)-exp(x))/h)-exp(x)) ;
    vals_tr_bd(i)=4*h/(2);
    
    %vals_r(i)=abs(((exp(x+h)-exp(x))/h)-(exp(x_hat+h)-exp(x_hat))/h);
    vals_r_bd(i)=2*(eps)/(h);
    
    vals_t(i)=abs(((exp(x_hat+h)-exp(x_hat))/h)-exp(x)) ;   
end
loglog(hs,vals_t);
hold on
%loglog(hs,vals_r);
%hold on
%loglog(hs,abs(vals_tr));
%hold on
loglog(hs,abs(vals_tr_bd),'--*');
hold on
loglog(hs,abs(vals_r_bd),'-+');
xlabel('step size');
ylabel('error');
legend('total error','Truncation error bounded','Rounding error bounded');  
