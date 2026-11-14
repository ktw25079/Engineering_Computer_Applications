% HW2 08 2자유도 질량·강성행렬과 정적 변위
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
M=diag([1 1]); K=[4 -2;-2 4]; F=[1;2]; x=K\F;
results.M_kg=M; results.K_N_per_m=K; results.x_m=x;
assert(norm(x-[2/3;5/6])<1e-12);
assert(norm(K*x-F)<1e-12 && all(eig(K)>0));
