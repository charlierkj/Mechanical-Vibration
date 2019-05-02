k1V=192000;k1H=192000;
l2V=1.25;l2H=1.51;S=[0 1 2 3 4 5 10];
U=1:30;ag=[];
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
for i=1:30
    s=S(1);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(1)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=0m时驾驶员的振动强度曲线');
for i=1:30
    s=S(2);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(2)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=1m时驾驶员的振动强度曲线');
for i=1:30
    s=S(3);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(3)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=2m时驾驶员的振动强度曲线');
for i=1:30
    s=S(4);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(4)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=3m时驾驶员的振动强度曲线');
for i=1:30
    s=S(5);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(5)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=4m时驾驶员的振动强度曲线');
for i=1:30
    s=S(6);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(6)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=5m时驾驶员的振动强度曲线');
for i=1:30
    s=S(7);
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(7)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('s=10m时驾驶员的振动强度曲线');

s=5;
for i=1:30
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h 0];
    tV=[tV 30/u];
    tH=[tH 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(8)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('1个路面凸块时驾驶员的振动强度曲线');
for i=1:30
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h 0];
    tV=[tV tV(1,5)+s/u+tadd 30/u];
    tH=[tH tH(1,5)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(9)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('2个路面凸块时驾驶员的振动强度曲线');
for i=1:30
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h h 0];
    tV=[tV tV(1,5)+s/u+tadd];
    tH=[tH tH(1,5)+s/u+tadd];
    tV=[tV tV(1,10)+s/u+tadd 30/u];
    tH=[tH tH(1,10)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(10)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('3个路面凸块时驾驶员的振动强度曲线');
for i=1:30
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h h h 0];
    tV=[tV tV(1,5)+s/u+tadd];
    tH=[tH tH(1,5)+s/u+tadd];
    tV=[tV tV(1,10)+s/u+tadd];
    tH=[tH tH(1,10)+s/u+tadd];
    tV=[tV tV(1,15)+s/u+tadd 30/u];
    tH=[tH tH(1,15)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(11)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('4个路面凸块时驾驶员的振动强度曲线');
for i=1:30
    u=U(i);
    h=[0 0 H H 0];
    tadd=[0 0 H/u (H+L)/u (2*H+L)/u];
    tV=[0 0 H/u (H+L)/u (2*H+L)/u];
    tH=[0 l2/u (l2+H)/u (l2+H+L)/u (l2+2*H+L)/u];
    h=[h h h h h 0];
    tV=[tV tV(1,5)+s/u+tadd];
    tH=[tH tH(1,5)+s/u+tadd];
    tV=[tV tV(1,10)+s/u+tadd];
    tH=[tH tH(1,10)+s/u+tadd];
    tV=[tV tV(1,15)+s/u+tadd];
    tH=[tH tH(1,15)+s/u+tadd];
    tV=[tV tV(1,20)+s/u+tadd 30/u];
    tH=[tH tH(1,20)+s/u+tadd 30/u];
    sim('model1');
    ag(i)=max(abs(a(:,8)));
end
figure(12)
plot(U,ag/9.8,'linewidth',2);grid on;
xlabel('v/m*s^-1');ylabel('振动强度');title('5个路面凸块时驾驶员的振动强度曲线');