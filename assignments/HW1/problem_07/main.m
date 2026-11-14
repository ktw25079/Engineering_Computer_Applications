% HW1 문제 7: 규칙을 이용한 행렬 생성
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
results.A=[0:5:30; 600:-100:0; linspace(0,5,7)];
results.B=[(1:5)' zeros(5,1) 3*ones(5,1)];
C=zeros(3,5); C(3,5)=8; results.C=C;
assert(isequal(size(results.A),[3 7]));
assert(isequal(results.B(:,1),(1:5)') && all(results.B(:,3)==3));
assert(nnz(C)==1 && C(3,5)==8);
