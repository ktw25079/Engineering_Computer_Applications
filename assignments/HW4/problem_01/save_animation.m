function save_animation(t,positions,tips)
fig=figure('Visible','off','Position',[100 100 500 420]); ax=axes(fig); hold(ax,'on'); grid(ax,'on');
axis(ax,'equal'); axis(ax,[-4.8 4.8 -4.8 4.8]); xlabel(ax,'x (m)'); ylabel(ax,'y (m)');
colors=lines(3); arms=gobjects(1,3);
for j=1:3
 p=squeeze(positions(1,j:j+1,:));
 link=Link(norm(p(2,:)-p(1,:)),atan2(p(2,2)-p(1,2),p(2,1)-p(1,1)),p(1,:));
 arms(j)=link.plot_link(colors(j,:),ax);
end
trace=plot(ax,NaN,NaN,'Color',[.5 .5 .5]);
indices=1:5:numel(t);
for a=1:numel(indices)
 k=indices(a);
 for j=1:3
  p=squeeze(positions(k,j:j+1,:));set(arms(j),'XData',p(:,1),'YData',p(:,2));
 end
 set(trace,'XData',tips(1:k,1),'YData',tips(1:k,2)); title(ax,sprintf('t = %.2f s',t(k)));
 rgb=print(fig,'-RGBImage','-r80'); [im,map]=rgb2ind(rgb,128);
 if a==1, imwrite(im,map,'Result.gif','gif','LoopCount',Inf,'DelayTime',.05);
 else, imwrite(im,map,'Result.gif','gif','WriteMode','append','DelayTime',.05); end
end
close(fig);
end
