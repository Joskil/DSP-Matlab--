%%
%画出x(-n)的波形
n = -4:6;
x_n = [1 0 2 -1 2 1 2 4 0.5 0 2];
x_n_1 = x_n(end:-1:1);
n_1 = -6:4;
subplot(2,3,1); stem(n,x_n);title('x(n)');
subplot(2,3,2); stem(n_1,x_n_1);title('(1)');
xlabel('n'); ylabel('x(-n)'); axis([-6,4,-2,5]);
%%
%画出xe(n)=[x(n)+x(-n)]/2的波形
[x_n_2,n_2] = sigadd(x_n,n,x_n_1,n_1);
subplot(2,3,3); stem(n_2,x_n_2);title('(2)');
xlabel('n'); ylabel('xe(n)'); axis([-6,6,-4,5]);
%%
%画出xo(n)=[x(n)-x(-n)]/2的波形
[x_n_3,n_3] = sigadd(x_n,n,-x_n_1,n_1);
subplot(2,3,4); stem(n_3,x_n_3);title('(3)');
xlabel('n'); ylabel('xo(n)'); axis([-6,6,-4,5]);

%%
%画出x1(n)=[xo(n)+xe(n)]/2的波形
[x_n_4,n_4] = sigadd(x_n_2,n_2,x_n_3,n_3);
x_n_4 = x_n_4./2;
subplot(2,3,5); stem(n_4,x_n_4);title('(4)');
xlabel('n'); ylabel('x1(n)'); axis([-6,6,-2,5]);

%%