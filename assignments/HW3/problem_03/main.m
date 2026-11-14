% HW3 문제 03: 복합하중 처짐의 중첩
% 원문 조건 및 가정: README.md
results=struct();
E=70e9; I=1e-4; L=5; x=linspace(0,L,501);
cases={struct('P',50e3,'M',8e4),struct('P',50e3,'w',5e3),struct('P',50e3,'M',8e4,'w',5e3)};
y=zeros(numel(x),3);
for k=1:3, y(:,k)=Defl_tot(E,I,L,x,cases{k}).'; end
figure; plot(x,y,'LineWidth',1.3); grid on; xlabel('x (m)'); ylabel('Deflection (m)');
legend('P + M','P + w','P + M + w','Location','best');
results.tip_deflections_m=y(end,:);
ref=Defl_P(50e3,E,I,L,x)+Defl_M(8e4,E,I,x)+Defl_w(5e3,E,I,L,x);
assert(max(abs(y(:,3).'-ref))<1e-12);
assert(all(Defl_tot(E,I,L,x,struct())==0));
