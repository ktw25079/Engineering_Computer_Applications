function save_animation(t,A,tip)
fig=figure('Visible','off','Position',[100 100 500 420]);
ax=axes(fig); hold(ax,'on'); grid(ax,'on'); axis(ax,'equal'); axis(ax,[-3.3 3.3 -3.3 3.3]);
xlabel(ax,'x (m)'); ylabel(ax,'y (m)');
path=plot(ax,NaN,NaN,'Color',[.6 .6 .6]); arm=plot(ax,NaN,NaN,'-o','LineWidth',2);
indices=1:10:numel(t);
for j=1:numel(indices)
 k=indices(j); set(path,'XData',tip(1,1:k),'YData',tip(2,1:k));
 set(arm,'XData',[0 A(1,k) tip(1,k)],'YData',[0 A(2,k) tip(2,k)]); title(ax,sprintf('t = %.2f s',t(k)));
 rgb=print(fig,'-RGBImage','-r80'); [im,map]=rgb2ind(rgb,128);
 if j==1, imwrite(im,map,'Result.gif','gif','LoopCount',Inf,'DelayTime',0.1);
 else, imwrite(im,map,'Result.gif','gif','WriteMode','append','DelayTime',0.1); end
end
close(fig);
end
