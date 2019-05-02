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
title('��ǰ��·�治ƽ�����뵽��ʻԱ�񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xdVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xdVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(2)
title('��ǰ��·�治ƽ�����뵽���ų˿��񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xpVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xpVl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(3)
title('��ǰ��·�治ƽ�����뵽��ʻԱ�񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xdVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xdVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(4)
title('��ǰ��·�治ƽ�����뵽���ų˿��񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xpVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xpVr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(5)
title('�����·�治ƽ�����뵽��ʻԱ�񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xdHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xdHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(6)
title('�����·�治ƽ�����뵽���ų˿��񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xpHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xpHl),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(7)
title('�Һ���·�治ƽ�����뵽��ʻԱ�񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xdHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xdHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');
figure(8)
title('�Һ���·�治ƽ�����뵽���ų˿��񶯼��ٶȵ�Ƶ����Ӧ��������')
subplot(2,1,1);
plot(f,abs(xpHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('Xa/m*s^-2');title('��Ƶ��Ӧ');
subplot(2,1,2);
plot(f,angle(xpHr),'linewidth',2);grid on;
xlabel('f/Hz');ylabel('��/rad');title('��Ƶ��Ӧ');



