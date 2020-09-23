%%
n_1 = 0:5; h_n_1 = stepseq(0,0,5)- stepseq(4,0,5); 
x_n = stepseq(0,0,5)- stepseq(5,0,5);
[y_n_1,n_1] = conv_m(h_n_1,n_1,x_n,n_1);
subplot(2,2,1);stem(n_1,y_n_1);title('(1)');
xlabel('n'); ylabel('y(n)'); axis([0,10,0,5]);
%%
n_2_1 = 0:5; n_2_2 = 0:2;
h_n_2 = 2.*(stepseq(0,0,4)-stepseq(4,0,4)); x_n_2 = impseq(0,0,2) - impseq(2,0,2);
[y_n_2,n_2] = conv_m(h_n_2,n_2_1,x_n_2,n_2_2);
subplot(2,2,2);stem(n_2,y_n_2);title('(2)');
xlabel('n'); ylabel('y(n)'); axis([0,6,-2,2]);
%%
n_3_1 = 0:100; n_3_2 = 0:5;
h_n_3 = (0.5.^n_3_1).*stepseq(0,0,100);
x_n_3 = stepseq(0,0,5) - stepseq(5,0,5);
[y_n_3,n_3] = conv_m(h_n_3,n_3_1,x_n_3,n_3_2);
subplot(2,2,3);stem(n_3,y_n_3);title('(3)');
xlabel('n'); ylabel('y(n)'); axis([0,100,0,2]);

%%