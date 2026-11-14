function run_all()
% HW1의 모든 문제를 독립 작업공간에서 실행하고 결과를 기록합니다.
base=fileparts(mfilename('fullpath'));
summary="MATLAB "+string(version)+newline;
for n=1:13
    folder=fullfile(base,sprintf('problem_%02d',n));
    execute_one(folder);
    summary=summary+sprintf('PASS HW1/problem_%02d\n',n);
end
fid=fopen(fullfile(base,'validation.txt'),'w','n','UTF-8');
guard=onCleanup(@() fclose(fid));
fprintf(fid,'%s',summary);
disp(summary);
end

function execute_one(folder)
old=pwd; cleanup=onCleanup(@() cd(old)); cd(folder);
run('main.m');
text="MATLAB "+string(version)+newline;
names=fieldnames(results);
for k=1:numel(names)
    value=results.(names{k});
    text=text+string(names{k})+newline+string(evalc('format long g; disp(value)'))+newline;
end
fid=fopen('results.txt','w','n','UTF-8');
guard=onCleanup(@() fclose(fid)); fprintf(fid,'%s',text);
end
