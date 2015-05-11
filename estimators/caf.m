function [caf, taus, alphas] = caf(s)
N1=length(s);
N=floor(N1/3);
caf = zeros(2*N+1,N);
prods = zeros(2*N+1,N);
taus=-N:N;
for tau = taus
    stat = (s(N+1:2*N)-mean(s(N+1:2*N)));
    shifted = (s(N+1+tau:2*N+tau)-mean(s(N+1+tau:2*N+tau)));
    prod=stat.*shifted;
    prods(tau+N+1,:)=prod;
    caf(tau+N+1,:)=fftshift(fft(prod));
end

taus=-N:N;
alphas=-pi+2*pi/(N):2*pi/(N):pi;
alphas=alphas/pi;
end

