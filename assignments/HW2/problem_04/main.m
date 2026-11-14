% HW2 04 두 벡터의 사이각
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
r1=[-2 6 5]; r2=[5 -1 3];
c=dot(r1,r2)/(sqrt(sum(r1.^2))*sqrt(sum(r2.^2)));
results.cosine=c; results.angle_deg=acosd(max(-1,min(1,c)));
assert(results.angle_deg>90 && results.angle_deg<92);
assert(abs(cosd(results.angle_deg)-c)<1e-12);
