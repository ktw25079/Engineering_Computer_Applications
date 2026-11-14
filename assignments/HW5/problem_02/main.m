% HW5 문제 02: 다항함수의 수치미분
% 원문 조건 및 가정: README.md
results=struct();
x=-5:0.1:5; h=x(2)-x(1); y=12*x.^3-5*x.^2+3;
dy=zeros(size(x)); dy(2:end-1)=(y(3:end)-y(1:end-2))/(2*h);
dy(1)=(-3*y(1)+4*y(2)-y(3))/(2*h); dy(end)=(3*y(end)-4*y(end-1)+y(end-2))/(2*h);
exact=36*x.^2-10*x;
results.max_abs_error=max(abs(dy-exact)); results.interior_max_abs_error=max(abs(dy(2:end-1)-exact(2:end-1)));
x2=-5:0.05:5; h2=x2(2)-x2(1); y2=12*x2.^3-5*x2.^2+3;
d2=[(-3*y2(1)+4*y2(2)-y2(3))/(2*h2), (y2(3:end)-y2(1:end-2))/(2*h2), (3*y2(end)-4*y2(end-1)+y2(end-2))/(2*h2)];
results.half_step_max_error=max(abs(d2-(36*x2.^2-10*x2)));
results.convergence_ratio=results.max_abs_error/results.half_step_max_error;
assert(abs(results.max_abs_error-.24)<1e-8 && abs(results.convergence_ratio-4)<1e-7);
figure; plot(x,dy,'b-',x,exact,'r--'); grid on; xlabel('x'); ylabel('dy/dx'); legend('Finite difference','Analytical','Location','best');
