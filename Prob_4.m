iH=input('Input the initial height of the projectile: ');
iv=input('Input the magnitude of the velocity: ');
theta=input('Input the angle in degrees: ');
ax=input('Input the x-component acceleration: ');
ay=input('Input the y-component acceleration: ');

vox=iv*cosd(theta);
voy=iv*sind(theta);


if ay==0
    error('If the y-component is 0, then there is no free-falling motion. ur cancelled')
end

z=([iH,voy,ay/2]);
t=max(roots(z));
b=0:0.01:t+1;
l=zeros(1,length(b)+1);
m=zeros(1,length(c)+1);
ta=0.01;
m(1)=iH;

for i=1:length(b)-1
    xtime=((ax*(ta*ta))/2)+(vox*ta);
    ytime=((ay*(ta*ta))/2)+(voy*ta)+iH;
    l(i+1)=xtime;
    m(i+1)=ytime;
    ta=ta+0.01;
end
l(length(b)+1)=(ax/2)*ta*ta+vox*0.01;
m(length(b)+1)=0;

    plot(l,m,'-r')
    xlim([0 max(l)+1])
    ylim([0 max(m)+1])
    xlabel('Height')
    ylabel('Distance')
    title('Projectile Motion')