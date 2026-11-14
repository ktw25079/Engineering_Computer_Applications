function run_all()
% HW2의 모든 문제를 독립 작업공간에서 실행하고 결과를 기록합니다.
base=fileparts(mfilename('fullpath'));
summary="MATLAB "+string(version)+newline;
for key=["01" "02a" "02b" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13"]
    folder=fullfile(base,'problem_'+key);
    execute_one(folder);
    summary=summary+sprintf('PASS HW2/problem_%s\n',key);
end
fid=fopen(fullfile(base,'validation.txt'),'w','n','UTF-8');
guard=onCleanup(@() fclose(fid));
fprintf(fid,'%s',summary);
disp(summary);
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
