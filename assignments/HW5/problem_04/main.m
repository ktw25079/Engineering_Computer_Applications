% HW5 문제 04: 1차 미분방정식의 ode45 해
% 원문 조건 및 가정: README.md
results=struct();
opts=odeset('RelTol',1e-9,'AbsTol',1e-11);
[t,y]=ode45(@(t,y)1-sin(t),linspace(0,4,401),10,opts);
exact=t+cos(t)+9;
results.final_y=y(end); results.max_abs_error=max(abs(y-exact));
assert(results.max_abs_error<1e-6 && y(1)==10);
figure; plot(t,y,'b-',t,exact,'r--'); grid on; xlabel('t'); ylabel('y'); legend('ode45','Analytical','Location','best');
