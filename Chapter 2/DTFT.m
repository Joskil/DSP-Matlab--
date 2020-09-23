function [amp,phase] = DTFT(x,n,M)
    % xΪ�������У�n(1,1)��n(1,2)Ϊ���½磬MΪһ��������ȡ���ĵ���
    N = n(1,1) : n(1,end);
    K = -M/2:M/2;
    s = 2*pi./M;
    X = x*exp(-j*s).^(N'*K);
    amp = abs(X);
    phase = angle(X);
    subplot(1,2,1); plot(K.*s, amp); title('����'); xlabel('omiga');
    subplot(1,2,2); plot(K.*s, phase); title('���'); xlabel('omiga');
end