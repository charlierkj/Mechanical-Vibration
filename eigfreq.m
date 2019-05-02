function[p,A]=eigfreq(M,C,K)
p=[];
H=inv(M)*K;
[A,d]=eig(H);
n=size(H);
for i=1:n
    p(i)=sqrt(d(i,i));
    A(:,i)=A(:,i)/A(1,i);
end
for j=1:n-1
    for i=j+1:n
        if p(j)>p(i)
            t=p(i);
            p(i)=p(j);
            p(j)=t;
            q=A(:,i);
            A(:,i)=A(:,j);
            A(:,j)=q;
        end
    end
end
Mm=A'*M*A;
Cm=A'*C*A;
Km=A'*K*A;
disp('����Ƶ�ʣ�');disp(p);
disp('�����ͣ�');disp(A);
disp('ģ̬��������');disp(Mm);
disp('ģ̬�������');disp(Cm);
disp('ģ̬�նȾ���');disp(Km);
figure(1)
plot(A(:,1),'linewidth',2);title('��һ��������');grid on;xlabel('x');
figure(2)
plot(A(:,2),'linewidth',2);title('�ڶ���������');grid on;xlabel('x');
figure(3)
plot(A(:,3),'linewidth',2);title('������������');grid on;xlabel('x');
figure(4)
plot(A(:,4),'linewidth',2);title('���Ľ�������');grid on;xlabel('x');
figure(5)
plot(A(:,5),'linewidth',2);title('�����������');grid on;xlabel('x');
figure(6)
plot(A(:,6),'linewidth',2);title('������������');grid on;xlabel('x');
figure(7)
plot(A(:,7),'linewidth',2);title('���߽�������');grid on;xlabel('x');
if n==8
  figure(8)
  plot(A(:,8),'linewidth',2);title('�ڰ˽�������');grid on;xlabel('x');
end
if n==9
  figure(8)
  plot(A(:,8),'linewidth',2);title('�ڰ˽�������');grid on;xlabel('x');
  figure(9)
  plot(A(:,9),'linewidth',2);title('�ھŽ�������');grid on;xlabel('x');
end