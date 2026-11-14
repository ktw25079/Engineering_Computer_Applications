% HW2 13 철도 완충장치 변위와 속도
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
t=linspace(0,4,1001); x=4.219*(exp(-1.58*t)-exp(-6.32*t));
v=26.67*exp(-6.32*t)-6.67*exp(-1.58*t);
dx=4.219*(-1.58*exp(-1.58*t)+6.32*exp(-6.32*t));
figure; subplot(2,1,1); plot(t,x,'LineWidth',1.3); grid on; xlabel('t (s)'); ylabel('x (m)');
subplot(2,1,2); plot(t,v,'LineWidth',1.3); grid on; xlabel('t (s)'); ylabel('v (m/s)');
[xm,idx]=max(x); results.maximum_x_m=xm; results.sample_peak_time_s=t(idx);
results.max_printed_derivative_difference=max(abs(v-dx));
assert(x(1)==0 && abs(v(1)-20)<1e-12);
assert(results.max_printed_derivative_difference<0.01);
