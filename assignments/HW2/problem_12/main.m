% HW2 12 극좌표 함수
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
theta=linspace(0,2*pi,2001); r=2*sin(3*theta).*sin(theta);
figure; polarplot(theta,r,'LineWidth',1.3); title('r = 2 sin(3 theta) sin(theta)');
results.radius_range=[min(r) max(r)]; results.r_at_pi_over_2=2*sin(3*pi/2)*sin(pi/2);
assert(abs(results.r_at_pi_over_2+2)<1e-12);
assert(max(abs(r-(cos(2*theta)-cos(4*theta))))<1e-12);
