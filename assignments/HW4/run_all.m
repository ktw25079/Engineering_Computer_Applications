function run_all()
base=fileparts(mfilename('fullpath'));
summary="MATLAB "+string(version)+newline;
for key=["01"]
    execute_one(fullfile(base,"problem_"+key));
    summary=summary+sprintf('PASS HW4/problem_%s\n',key);
end
fid=fopen(fullfile(base,'validation.txt'),'w','n','UTF-8');
guard=onCleanup(@() fclose(fid)); fprintf(fid,'%s',summary); disp(summary);
end

function execute_one(folder)
old=pwd; oldVisible=get(groot,'defaultFigureVisible');
cleanup=onCleanup(@() restore(old,oldVisible)); cd(folder);
close all; set(groot,'defaultFigureVisible','off');
run('main.m');
figs=findall(groot,'Type','figure');
for f=1:numel(figs)
    if exist('theme','file'), theme(figs(f),'light'); end
    exportgraphics(figs(f),sprintf('figure_%02d.png',f),'Resolution',140);
end
close all;
text="MATLAB "+string(version)+newline;
names=fieldnames(results);
for k=1:numel(names)
    value=results.(names{k});
    text=text+string(names{k})+newline+string(evalc('format long g; disp(value)'))+newline;
end
fid=fopen('results.txt','w','n','UTF-8');
guard=onCleanup(@() fclose(fid)); fprintf(fid,'%s',text);
end

function restore(folder,visibility)
cd(folder); set(groot,'defaultFigureVisible',visibility);
end
