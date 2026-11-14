% HW1 문제 6: 등간격 벡터 생성
% 출처: EngComp_HW1.pdf, PDF 2쪽. 풀이 및 검증용 재작성 코드.
results=struct();
results.a=1:20;
results.b=0:pi/10:2*pi;
results.c=linspace(4,20,15);
results.d=[1:10 9:-1:1];
assert(numel(results.b)==21 && abs(results.b(end)-2*pi)<1e-12);
assert(numel(results.c)==15 && results.c(1)==4 && results.c(end)==20);
assert(numel(results.d)==19 && isequal(results.d,fliplr(results.d)));
