clear all
y=awgn(am(400)',3);

[caf, tau, alpha] = caf(y);
figure('Color',[1 1 1]);
a = surf(alpha, tau, abs(caf));
set(a,'edgecolor','interp');
view(-37.5,40);
xlabel('alpha');
ylabel('k');
zlabel('Rx');

[S,alpha,f] = ssca(y,1,1/64,1/64);
figure('Color',[1 1 1]);
a=surf(alpha,f,S);
set(a,'edgecolor','interp');
view(-37.5,40);
xlabel('alpha');
ylabel('f');
zlabel('Sx');
plotSCD(S,alpha,f)