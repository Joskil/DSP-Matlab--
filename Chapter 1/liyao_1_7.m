n_1 = 0:4; h_n = [2 1 0.5 0 0];
n_2 = -2:4; x_n = [-1 0 0 1 0 2 0];
[y_n,n_3] = conv_m(h_n,n_1,x_n,n_2);
stem(n_3,y_n);
xlabel('n'); ylabel('y(n)'); axis([-2,8,-3,5]);