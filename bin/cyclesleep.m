tic;

plt=0;
error=0;
oneerror=[];
twoerror=[];
threeerror=[];
fourerror=[];
fiveerror=[];
sixerror=[];
sevenerror=[];
eighterror=[];
js=[];
for(i=1:40000),
    %for(j=1:length(target)),
        j=mod(round(rand(1)*100),length(target))+1;
        js=[js j];
        o=sigmoid(dot(v_one,h_one(:,j)));
        dv=gamma*(target(j)-o)*h_one(:,j);    %compute change of v
        v_one=v_one+dv;                     %update weights
        plt=[plt target(j)-o];
 
        %end    
end;

oneerror=[oneerror sigmoid(dot(v_one,sigmoid(w_one*(t1))))];
        twoerror=[twoerror sigmoid(dot(v_one,sigmoid(w_one*(t2))))];
        threeerror=[threeerror sigmoid(dot(v_one,sigmoid(w_one*(t3))))];
        fourerror=[fourerror sigmoid(dot(v_one,sigmoid(w_one*(t4))))];
        fiveerror=[fiveerror sigmoid(dot(v_one,sigmoid(w_one*(t5))))];
        sixerror=[sixerror sigmoid(dot(v_one,sigmoid(w_one*(t6))))]; 
        sevenerror=[sevenerror sigmoid(dot(v_one,sigmoid(w_one*(t7))))];
        eighterror=[eighterror sigmoid(dot(v_one,sigmoid(w_one*(t8))))];
        error=[oneerror; twoerror; threeerror; fourerror; fiveerror; sixerror; sevenerror; eighterror];
        subplot(511);
        plot(plt);
        subplot(512);
        bar(v_one);
        subplot(513);
        plot(error');
        %legend('one','two','three','four','five','six','seven',-1);
        subplot(514);
        hist(js,21);
        y=[];
        for(i=1:56), y=[y sigmoid(dot(v_one,h_one(:,i)))]; end
        subplot(515);
        bar(y);

sprintf('Done. Completed in %0.5g seconds.',toc)
results