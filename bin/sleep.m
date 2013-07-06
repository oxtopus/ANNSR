loadstim
for(x=1:7),
    figure;
    ptron_one
    target=t(x,:);
    cyclelearn_one
    V(x,:)=v;
end
