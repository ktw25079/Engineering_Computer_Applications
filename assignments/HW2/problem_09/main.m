% HW2 09 3자유도 질량·강성행렬과 정적 변위
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
M=eye(3); K=[6 -2 -2;-2 6 -2;-2 -2 6]; F=[1;2;3];
results.M_kg=M; results.K_N_per_m=K; results.x_m=K\F;
assert(norm(results.x_m-[0.875;1;1.125])<1e-12);
assert(norm(K*results.x_m-F)<1e-12 && all(eig(K)>0));
