x1=input('input x1: ');
y1=input('input y1: ');
x2=input('input x2: ');
y2=input('input y2: ');
x3=input('input x3: ');
y3=input('input y3: ');
%note that the equation used is x^2+y^2+D+E+F=0
D=2*((((x1*x1)-(x3*x3))*(y1-x2))+(((y1*y1)-(y3*y3))*(y1-y2))+(((x2*x2)-(x1*x1))*(y1-y3))+(((y2*y2)-(y1*y1))*(y1-y3)))/((y3-y1)*(y1-y2))-((x2-x1)*(y1-y3));
E=2*((((x1*x1)-(x3*x3))*(x1-x2))+(((y1*y1)-(y3*y3))*(x1-y2))+(((x2*x2)-(x1*x1))*(x1-x3))+(((y2*y2)-(y1*y1))*(x1-x3)))/((y3-y1)*(x1-x2))-((y2-y1)*(x1-x3));
F=-(x1*x1)-(y1*y1)-(2*D*x1)-(2*E*y1);
h=-D;
k=-E;
r=sqrt(h*h+k*k-F);
fprintf('The center is (%.2f , %.2f)\n',h,k);
fprintf('The radius is %.2f\n',r);
vector=[D*2,E*2,F]