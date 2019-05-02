U=[5,10,15,20,25,30];
[m,n]=size(U);
k1V=192000;k1H=192000;
l2V=1.25;l2H=1.51;u=10;
H=0.1;L=0.5;l2 =l2V+l2H;
HH=0.05;LL=0.7;
Kt=[0 0 0 0;...
    0 0 0 0;...
    0 0 0 0;...
    k1V 0 0 0;...
    0 k1V 0 0;...
    0 0 k1H 0;...
    0 0 0 k1H;...
    0 0 0 0;...
    0 0 0 0];
h=[0 0 H H 0 0];
color=['r','m','y','g','b','k'];

for i=1:n
    u=U(i);
    tV=[0 0 H/u (H+L)/u (2*H+L)/u 30/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u 30/u];
    sim('model1')
    figure(1)
    subplot(3,1,1)
    plot(t,x(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('x/m');title('驾驶员的垂向位移响应');
grid on;
for i=1:n
    u=U(i);
    tV=[0 0 H/u (H+L)/u (2*H+L)/u 30/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u 30/u];
    sim('model1')
    figure(1)
    subplot(3,1,2)
    plot(t,v(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('v/m*s^-1');title('驾驶员的垂向速度响应');
grid on;
for i=1:n
    u=U(i);
    tV=[0 0 H/u (H+L)/u (2*H+L)/u 30/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u 30/u];
    sim('model1')
    figure(1)
    subplot(3,1,3)
    plot(t,a(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('a/m*s^-2');title('驾驶员的垂向加速度响应');
grid on;
xlabel('t/s');suptitle('梯形路面凸块');
legend('u=5','u=10','u=15','u=20','u=25','u=30')

for i=1:n
    u=U(i);
    sim('model2')
    figure(2)
    subplot(3,1,1)
    plot(t,x(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('x/m');title('驾驶员的垂向位移响应');
grid on;
for i=1:n
    u=U(i);
    sim('model2')
    figure(2)
    subplot(3,1,2)
    plot(t,v(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('v/m*s^-1');title('驾驶员的垂向速度响应');
grid on;
for i=1:n
    u=U(i);
    sim('model2')
    figure(2)
    subplot(3,1,3)
    plot(t,a(:,8),color(i),'linewidth',1.5);
    hold on;
end
ylabel('a/m*s^-2');title('驾驶员的垂向加速度响应');
grid on;
xlabel('t/s');suptitle('(1-cos)形路面凸块');
legend('u=5','u=10','u=15','u=20','u=25','u=30')

