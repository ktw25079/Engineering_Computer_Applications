% HW5 문제 01: 압력·부피 데이터 보간
% 원문 조건 및 가정: README.md
results=struct();
V=[1 2 3 4 5 6]; P=[2494 1247 831 623 499 416];
results.pressure_linear_kPa=interp1(V,P,3.8,'linear');
results.pressure_spline_kPa=interp1(V,P,3.8,'spline');
[Ps,order]=sort(P); Vs=V(order);
results.volume_linear_m3=interp1(Ps,Vs,1000,'linear');
results.volume_spline_m3=interp1(Ps,Vs,1000,'spline');
Vq=(1:0.2:6)'; Pq=interp1(V,P,Vq,'linear');
results.columns='Volume_m3, Pressure_kPa'; results.refined_table=[Vq Pq];
writematrix(results.refined_table,'interpolation.csv');
assert(abs(results.pressure_linear_kPa-(831+0.8*(623-831)))<1e-10);
assert(abs(results.volume_linear_m3-(2+(1247-1000)/(1247-831)))<1e-12);
assert(max(abs(interp1(V,P,V,'spline')-P))<1e-10);
figure; plot(V,P,'ko',Vq,Pq,'b-'); grid on; xlabel('Volume (m^3)'); ylabel('Pressure (kPa)'); legend('Data','Linear interpolation');
