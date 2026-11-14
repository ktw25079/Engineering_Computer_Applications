% HW1 문제 4: RLC 회로의 특성근
% 출처: EngComp_HW1.pdf, PDF 1쪽. 풀이 및 검증용 재작성 코드.
results=struct();
L=100e-3; C=1e-6;
R=800; alpha=R/(2*L);
results.roots_R800_per_s=[-alpha+sqrt(alpha^2-1/(L*C)), -alpha-sqrt(alpha^2-1/(L*C))];
R=(100:100:1000)'; alpha=R/(2*L);
s1=-alpha+sqrt(alpha.^2-1/(L*C));
s2=-alpha-sqrt(alpha.^2-1/(L*C));
results.columns='R_ohm, root_plus_per_s, root_minus_per_s';
results.root_table=[R s1 s2];
results.critical_R_ohm=2*sqrt(L/C);
assert(max(abs(s1.^2+(R/L).*s1+1/(L*C)))<1e-7);
assert(max(abs(s2.^2+(R/L).*s2+1/(L*C)))<1e-7);
