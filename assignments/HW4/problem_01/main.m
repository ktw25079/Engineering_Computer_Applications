% HW4 문제 01: n-Link 클래스와 3링크 애니메이션
% 원문 조건 및 가정: README.md
results=struct();
lengths=[2 1.5 1]; init_angles=[pi/4 -pi/6 pi/3]; rates=[2*pi -0.5*pi pi];
t=0:0.01:5; n=numel(lengths); links=cell(1,n); joint=[0 0];
for j=1:n, links{j}=Link(lengths(j),init_angles(j),joint); joint=links{j}.end_pos; end
positions=zeros(numel(t),n+1,2); tips=zeros(numel(t),2);
for k=1:numel(t)
 joint=[0 0];
 for j=1:n
  links{j}.update_joint(joint); links{j}.update_angle(init_angles(j)+rates(j)*t(k));
  endpoint=links{j}.end_pos;
  assert(abs(norm(endpoint-joint)-lengths(j))<1e-12);
  positions(k,j+1,:)=reshape(endpoint,1,1,2); joint=endpoint;
 end
 tips(k,:)=joint;
end
figure; plot(tips(:,1),tips(:,2)); axis equal; grid on; xlabel('x (m)'); ylabel('y (m)'); title('Three-link end-effector trajectory');
results.initial_tip_m=tips(1,:); results.final_tip_m=tips(end,:);
results.time_step_s=0.01; results.computed_time_points=numel(t); results.gif_frames=101;
ref0=[sum(lengths.*cos(init_angles)) sum(lengths.*sin(init_angles))];
ref5=[sum(lengths.*cos(init_angles+5*rates)) sum(lengths.*sin(init_angles+5*rates))];
assert(norm(tips(1,:)-ref0)<1e-12 && norm(tips(end,:)-ref5)<1e-12);
writematrix([t.' tips],'trajectory.csv');
save_animation(t,positions,tips);
