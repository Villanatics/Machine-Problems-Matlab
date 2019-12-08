n=(0:1:199);
x=input('please input x(n): ');
y=zeros(size(x));
for a=1:length(n)
    if n(a)==0
        y(a)=-1.5*x(a)+2*x(a+1)-0.5*x(a+2);
    elseif n(a)<199
        y(a)=0.5*x(a+1)-0.5*x(a-1);
    else
        y(a)=1.5*x(a)-2*x(a-1)+0.5*x(a-2);
    end
end
plot(n,x,'-r');
hold on;
plot(n,y,'-k')
xlabel('n');
legend('x','y');