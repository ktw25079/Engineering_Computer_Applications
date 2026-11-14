% HW1 문제 5: 포물선 비행 시간·거리·높이
% 출처: EngComp_HW1.pdf, PDF 1쪽. 풀이 및 검증용 재작성 코드.
results=struct();
V0=182; theta=54; g=9.81;
results.flight_time_s=2*V0*sind(theta)/g;
results.range_m=2*V0^2*sind(theta)*cosd(theta)/g;
results.height_printed_expression=2*V0/g*sind(theta)^2;
results.height_correct_m=V0^2*sind(theta)^2/(2*g);
t_peak=V0*sind(theta)/g;
assert(abs(V0*sind(theta)*results.flight_time_s-g*results.flight_time_s^2/2)<1e-9);
assert(abs(V0*sind(theta)*t_peak-g*t_peak^2/2-results.height_correct_m)<1e-9);
