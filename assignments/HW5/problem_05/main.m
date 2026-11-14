% HW5 문제 05: 질량–스프링 자유진동
% 원문 조건 및 가정: README.md
results=struct();
k=10; m=2; x0=2; v0=0; % 초기 속도는 원문에 없어 정지 출발로 가정
opts=odeset('RelTol',1e-9,'AbsTol',1e-11);
[t,z]=ode45(@(t,z)[z(2);-k/m*z(1)],linspace(0,5,501),[x0;v0],opts);
x=z(:,1); v=z(:,2); acc=-k/m*x; omega=sqrt(k/m);
exact=x0*cos(omega*t)+v0/omega*sin(omega*t); energy=m*v.^2/2+k*x.^2/2;
results.assumed_initial_velocity_m_per_s=v0;
results.omega_rad_per_s=omega; results.max_position_error_m=max(abs(x-exact));
results.relative_energy_drift=max(abs(energy-energy(1)))/energy(1);
assert(results.max_position_error_m<1e-6 && results.relative_energy_drift<1e-7);
figure;
subplot(3,1,1); plot(t,x); grid on; ylabel('x (m)');
subplot(3,1,2); plot(t,v); grid on; ylabel('v (m/s)');
subplot(3,1,3); plot(t,acc); grid on; ylabel('a (m/s^2)'); xlabel('t (s)');
