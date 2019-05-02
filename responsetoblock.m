k1V=192000;k1H=192000;
l2V=1.25;l2H=1.51;u=10;
H=0.1;L=0.5;l2 =l2V+l2H;
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
tV=[0 0 H/u (H+L)/u (2*H+L)/u 30/u];
tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u 30/u];
sim('model1');
figure(1)
plot(t,a(:,8),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('��ʻԱ�Ĵ�����ٶ���Ӧ������͹�飩');
figure(2)
plot(t,a(:,9),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('�˿͵Ĵ�����ٶ���Ӧ������͹�飩');
figure(3)
plot(t,a(:,1),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('��������λ�õĴ�����ٶ���Ӧ������͹�飩');
figure(4)
plot(t,x(:,3),'linewidth',2);grid on;
xlabel('t/s');ylabel('��/rad');title('������λ����Ӧ������͹�飩');
figure(5)
plot(t,x(:,2),'linewidth',2);grid on;
xlabel('t/s');ylabel('��/rad');title('�����λ����Ӧ������͹�飩');

HH=0.05;LL=0.7;
sim('model2');
figure(6)
plot(t,a(:,8),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('��ʻԱ�Ĵ�����ٶ���Ӧ��1-cos��͹�飩');
figure(7)
plot(t,a(:,9),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('�˿͵Ĵ�����ٶ���Ӧ��1-cos��͹�飩');
figure(8)
plot(t,a(:,1),'linewidth',2);grid on;
xlabel('t/s');ylabel('a/m*s^-2');title('��������λ�õĴ�����ٶ���Ӧ��1-cos��͹�飩');
figure(9)
plot(t,x(:,3),'linewidth',2);grid on;
xlabel('t/s');ylabel('��/rad');title('������λ����Ӧ��1-cos��͹�飩');
figure(10)
plot(t,x(:,2),'linewidth',2);grid on;
xlabel('t/s');ylabel('��/rad');title('�����λ����Ӧ��1-cos��͹�飩');