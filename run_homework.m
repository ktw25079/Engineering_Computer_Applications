function run_homework()
% 원본 조건 기반 HW1-HW5 검증. HW6은 조사 보고서입니다.
base=fileparts(mfilename('fullpath')); previous=pwd;
cleanup=onCleanup(@() cd(previous));
for hw=1:5
    cd(fullfile(base,'assignments',sprintf('HW%d',hw)));
    clear run_all;
    run_all();
end
fprintf('All 37 homework code units passed. HW6 is a written report.\n');
end
