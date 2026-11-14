% HW5 문제 03: integral과 trapz의 적분 비교
% 원문 조건 및 가정: README.md
results=struct();
f=@(x)5*x.^3-2*x.^2+3;
x=-1:0.001:1; x2=-1:0.0005:1;
results.integral=integral(f,-1,1); results.trapz=trapz(x,f(x)); results.exact=14/3;
results.integral_error=abs(results.integral-results.exact); results.trapz_error=abs(results.trapz-results.exact);
results.half_step_trapz_error=abs(trapz(x2,f(x2))-results.exact);
assert(results.integral_error<1e-10 && results.trapz_error<1e-6);
assert(results.half_step_trapz_error<results.trapz_error/3.9);
