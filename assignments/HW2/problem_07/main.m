% HW2 07 케이블 장력과 단위 해석
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
L=120; h=50; x=[10 30 50 70 90 110]; mass=500; g=9.81;
T_printed=mass*L*sqrt(h^2+x.^2)./(h*x);
T_N=(mass*g)*L*sqrt(h^2+x.^2)./(h*x);
results.columns='x_m, printed_W500_value, SI_tension_N';
results.table=[x.' T_printed.' T_N.'];
assert(max(abs(T_N.*h./sqrt(h^2+x.^2).*x-mass*g*L))<1e-8);
assert(all(diff(T_N)<0));
