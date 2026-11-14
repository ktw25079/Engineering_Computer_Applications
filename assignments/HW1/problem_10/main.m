% HW1 문제 10: 특수 행렬의 블록 결합
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
results.A=[ones(2,2);zeros(2,2)];
results.B=[eye(3) ones(3,3)];
results.C=[zeros(2,2) ones(2,2);ones(1,4)];
results.D=[ones(5,2) zeros(5,1) eye(5,1)];
assert(isequal(results.A,[1 1;1 1;0 0;0 0]));
assert(isequal(results.B(:,1:3),eye(3)));
assert(isequal(results.C,[0 0 1 1;0 0 1 1;1 1 1 1]));
assert(isequal(results.D,[1 1 0 1;1 1 0 0;1 1 0 0;1 1 0 0;1 1 0 0]));
