% HW2 10 함수와 도함수 비교 그래프
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
x=linspace(0,2*pi,2001); f=sin(x).^2.*cos(2*x);
df=2*sin(x).*cos(x).*cos(2*x)-2*sin(x).^2.*sin(2*x);
figure; plot(x,f,'b-',x,df,'r--','LineWidth',1.3); grid on;
xlabel('x (rad)'); ylabel('Function value'); legend('f(x)','df/dx','Location','best');
numerical=(f(3:end)-f(1:end-2))/(2*(x(2)-x(1)));
results.max_derivative_error=max(abs(numerical-df(2:end-1)));
results.samples=[x(1:500:end).' f(1:500:end).' df(1:500:end).'];
assert(results.max_derivative_error<5e-5);
