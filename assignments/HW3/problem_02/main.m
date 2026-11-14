% HW3 문제 02: 모멘트와 등분포하중 처짐
% 원문 조건 및 가정: README.md
results=struct();
E=70e9; I=1e-4; L=5; M=8e4; w=5e3; x=linspace(0,L,501);
yM=Defl_M(M,E,I,x); yw=Defl_w(w,E,I,L,x);
figure; plot(x,yM,x,yw,'LineWidth',1.4); grid on; xlabel('x (m)'); ylabel('Deflection (m)');
legend('End moment','Distributed load','Location','best');
results.moment_tip_m=yM(end); results.distributed_tip_m=yw(end);
assert(abs(yM(end)-M*L^2/(2*E*I))<1e-12);
assert(abs(yw(end)-w*L^4/(8*E*I))<1e-12);
