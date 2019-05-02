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
disp('固有频率：');disp(p);
disp('主阵型：');disp(A);
disp('模态质量矩阵：');disp(Mm);
disp('模态阻尼矩阵：');disp(Cm);
disp('模态刚度矩阵：');disp(Km);
figure(1)
plot(A(:,1),'linewidth',2);title('第一阶主阵型');grid on;xlabel('x');
figure(2)
plot(A(:,2),'linewidth',2);title('第二阶主阵型');grid on;xlabel('x');
figure(3)
plot(A(:,3),'linewidth',2);title('第三阶主阵型');grid on;xlabel('x');
figure(4)
plot(A(:,4),'linewidth',2);title('第四阶主阵型');grid on;xlabel('x');
figure(5)
plot(A(:,5),'linewidth',2);title('第五阶主阵型');grid on;xlabel('x');
figure(6)
plot(A(:,6),'linewidth',2);title('第六阶主阵型');grid on;xlabel('x');
figure(7)
plot(A(:,7),'linewidth',2);title('第七阶主阵型');grid on;xlabel('x');
if n==8
  figure(8)
  plot(A(:,8),'linewidth',2);title('第八阶主阵型');grid on;xlabel('x');
end
if n==9
  figure(8)
  plot(A(:,8),'linewidth',2);title('第八阶主阵型');grid on;xlabel('x');
  figure(9)
  plot(A(:,9),'linewidth',2);title('第九阶主阵型');grid on;xlabel('x');
end