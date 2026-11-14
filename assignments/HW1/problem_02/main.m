% HW1 문제 2: 이상기체와 반데르발스 온도
% 출처: EngComp_HW1.pdf, PDF 1쪽. 풀이 및 검증용 재작성 코드.
results=struct();
P=220; n=2; V=1; a=5.536; b=0.03049; R=0.08314;
results.T_ideal_K=P*V/(n*R);
results.T_VW_K=(P+n^2*a/V^2)*(V-n*b)/(n*R);
results.difference_K=results.T_VW_K-results.T_ideal_K;
assert(abs(n*R*results.T_ideal_K-P*V)<1e-10);
assert(abs(n*R*results.T_VW_K-(P+n^2*a/V^2)*(V-n*b))<1e-10);
