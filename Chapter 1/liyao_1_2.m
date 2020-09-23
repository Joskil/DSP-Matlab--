%1.2
%%
%画出x(n)序列的波形
n_1 = -4:4;
x_n_1 = (2*n_1 + 5).*(stepseq(-4,-4,4)-stepseq(0,-4,4)) + 6*(stepseq(0,-4,4)-stepseq(4,-4,4));
subplot(3,2,1); stem(n_1,x_n_1);title('(1)');
xlabel('n'); ylabel('x(n)'); axis([-4,4,-5,10]);

%%
%试用延迟的单位脉冲序列及其加权和表示x(n)序列
x_n_2 = -3*impseq(-4,-4,4) - 1*impseq(-3,-4,4) + 1*impseq(-2,-4,4) + 3*impseq(-1,-4,4) + 6*impseq(0,-4,4) + 6*impseq(1,-4,4) + 6*impseq(2,-4,4) + 6*impseq(3,-4,4) + 0*impseq(4,-4,4);
subplot(3,2,2); stem(n_1,x_n_2);title('(2)');
xlabel('n'); ylabel('x(n)'); axis([-4,4,-5,10]);
%%
%画出x1(n)=2x(n-2)的波形
n_3 = n_1 + 2;
x_n_3 = 2.*x_n_1;
subplot(3,2,3); stem(n_3,x_n_3);title('(3)');
xlabel('n'); ylabel('x1(n)'); axis([-2,6,-8,15]);
%%
%画出x2(n)=2x(n+2)的波形
n_4 = n_1 -2;
x_n_4 = 2.*x_n_1;
subplot(3,2,4); stem(n_4,x_n_4);title('(4)');
xlabel('n'); ylabel('x2(n)'); axis([-6,2,-8,15]);

%%
%画出x3(n)=x(2-n)的波形
n_5_0 = 2 - n_1;
n_5  = n_5_0(end:-1:1);
x_n_5 = x_n_1(end:-1:1);
subplot(3,2,5); stem(n_5,x_n_5);title('(5)');
xlabel('n'); ylabel('x3(n)'); axis([-2,6,-5,10]);


%%
