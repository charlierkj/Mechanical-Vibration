function[]=responsetofreq(M,C,K)
i=sqrt(-1);
k1V=192000;k1H=192000;
Fc=[0 0 0 0;...
    0 0 0 0;...
    0 0 0 0;...
    k1V 0 0 0;...
    0 k1V 0 0;...
    0 0 k1H 0;...
    0 0 0 k1H;...
    0 0 0 0;...
    0 0 0 0];
for j=1:10000
    f(j)=j/100;
    w=2*pi*f(j);
    Hw=inv(-w^2*M+i*w*C+K)*Fc;
    Xa=-w^2*Hw;
    xdVl(j)=Xa(8,1);
    xpVl(j)=Xa(9,1);
    xdVr(j)=Xa(8,2);
    xpVr(j)=Xa(9,2);
    xdHl(j)=Xa(8,3);
    xpHl(j)=Xa(9,3);
    xdHr(j)=Xa(8,4);
    xpHr(j)=Xa(9,4);
end
figure(1)
title('左前轮路面不平度输入到驾驶员振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xdVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xdVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(2)
title('左前轮路面不平度输入到后排乘客振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xpVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xpVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(3)
title('右前轮路面不平度输入到驾驶员振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xdVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xdVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(4)
title('右前轮路面不平度输入到后排乘客振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xpVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xpVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(5)
title('左后轮路面不平度输入到驾驶员振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xdHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xdHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(6)
title('左后轮路面不平度输入到后排乘客振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xpHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xpHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(7)
title('右后轮路面不平度输入到驾驶员振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xdHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xdHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');
figure(8)
title('右后轮路面不平度输入到后排乘客振动加速度的频率响应特性曲线')
subplot(2,1,1);
plot(f,abs(xpHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('幅频响应');
subplot(2,1,2);
plot(f,angle(xpHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('φ/rad');title('相频响应');



