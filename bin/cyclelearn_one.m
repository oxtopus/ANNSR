%cyclelearn_one.m
%trains the network

tic;

%initialize some storage vectors
plt=[];
error=[];
response=[];
e=[];
ec=0;
js=[];

for(i=1:3000),
        j=mod(round(rand(1)*100),length(target))+1;     %select training stimulus at random
        js=[js j];                                      %for use with hist, to show distrubution of trainig stimuli
        h=sigmoid(w*stimuli(:,j)+bias);                 %compute hidden-layer
        o=sigmoid(v*h+bias);                            %compute output
        v=v+gamma*(target(j)-o)*h';                     %compute wieght change and update weights
        
        %for statistical purposes
        plt=[plt target(j)];
        response=[response o];
        error=[error target(j)-o];
        if(o ~= target(j)), ec=ec+1; end
        e=[e ec/i];
        
        %visual feedback
        subplot(311); plot(error);
        subplot(312); bar(v);
        subplot(313); plot(e); 
    end;

sprintf('Done. Completed in %0.5g seconds.',toc)
results