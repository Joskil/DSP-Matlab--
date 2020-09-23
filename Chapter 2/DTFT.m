function [amp,phase] = DTFT(x,n,M)
    % x为输入序列，n(1,1)，n(1,2)为上下界，M为一个周期内取样的点数
    N = n(1,1) : n(1,end);
    K = -M/2:M/2;
    s = 2*pi./M;
    X = x*exp(-j*s).^(N'*K);
    amp = abs(X);
    phase = angle(X);
    subplot(1,2,1); plot(K.*s, amp); title('幅度'); xlabel('omiga');
    subplot(1,2,2); plot(K.*s, phase); title('相角'); xlabel('omiga');
end