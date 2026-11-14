% HW1 문제 8: 행벡터와 열벡터 결합
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
a=[7 2 -3 1 0]; b=[-3 10 0 7 -2]; c=[1 0 4 -6 5];
results.A=[a;b;c];
results.B=[a.' b.' c.'];
assert(isequal(size(results.A),[3 5]));
assert(isequal(results.B,results.A.'));
