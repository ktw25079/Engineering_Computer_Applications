% HW3 문제 01: 집중하중에 의한 외팔보 처짐
% 원문 조건 및 가정: README.md
results=struct();
E=70e9; I=1e-4; L=5; P=50e3; x=linspace(0,L,501);
y=Defl_P(P,E,I,L,x);
figure; plot(x,y,'LineWidth',1.4); grid on; xlabel('x (m)'); ylabel('y_P (m)');
results.tip_deflection_m=y(end); results.fixed_deflection_m=y(1);
assert(y(1)==0 && abs(y(end)-P*L^3/(3*E*I))<1e-12);
assert(all(diff(y)>=0));
