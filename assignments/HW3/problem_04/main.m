% HW3 문제 04: 2링크 로봇팔 궤적과 자세
% 원문 조건 및 가정: README.md
results=struct();
L1=2; L2=1; t=0:0.01:10;
th1=pi/4*t; th2=pi*min(t,8);
A=[L1*cos(th1);L1*sin(th1)]; tip=A+[L2*cos(th2);L2*sin(th2)];
idx=find(abs(t-5)<1e-12,1);
figure; subplot(1,2,1); plot(tip(1,:),tip(2,:)); axis equal; grid on; xlabel('x (m)'); ylabel('y (m)'); title('End-effector trajectory');
subplot(1,2,2); plot([0 A(1,idx) tip(1,idx)],[0 A(2,idx) tip(2,idx)],'-o','LineWidth',2); axis equal; grid on; xlabel('x (m)'); ylabel('y (m)'); title('t = 5 s');
results.joint_at_5s_m=A(:,idx); results.tip_at_5s_m=tip(:,idx);
assert(norm(A(:,idx)-[-sqrt(2);-sqrt(2)])<1e-12);
assert(norm(tip(:,idx)-[-sqrt(2)-1;-sqrt(2)])<1e-12);
assert(max(abs(vecnorm(tip-A)-L2))<1e-12);
save_animation(t,A,tip);
results.animation_frames=101;
