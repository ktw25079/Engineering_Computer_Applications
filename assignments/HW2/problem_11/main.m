% HW2 11 매개변수 곡선 두 개
% 원문 조건과 정정 사항은 README.md 참고.
results=struct();
t=linspace(0,2*pi,1001); x=cos(t).^3; y=sin(t).^3; u=sin(t); v=cos(t);
figure; plot(x,y,'b-',u,v,'r--','LineWidth',1.3); grid on; axis equal; axis([-2 2 -2 2]);
xlabel('x or u'); ylabel('y or v'); legend('Astroid','Unit circle','Location','best');
results.astroid_identity_error=max(abs(abs(x).^(2/3)+abs(y).^(2/3)-1));
results.circle_identity_error=max(abs(u.^2+v.^2-1));
assert(results.astroid_identity_error<1e-12 && results.circle_identity_error<1e-12);
