function y=Defl_tot(E,I,L,x,loads)
y=zeros(size(x));
if isfield(loads,'P'), y=y+Defl_P(loads.P,E,I,L,x); end
if isfield(loads,'M'), y=y+Defl_M(loads.M,E,I,x); end
if isfield(loads,'w'), y=y+Defl_w(loads.w,E,I,L,x); end
end
