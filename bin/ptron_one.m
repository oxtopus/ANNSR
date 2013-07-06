%ptron_one.m
%initializes network

numh=100;
wrange=1;
bias=-1;
[numrows numcol]=size(onestimuli);
w = wrange*(2*rand(numh,numrows)-1);
v=zeros(1,numh);
gamma=1;

sprintf('New perceptron initiated with gamma=%0.5g, %d hidden-layer units.',gamma,numh)
disp('Run cyclelearn_one to train, dot(v_one,sigmoid(w_one*sigmoid(t))) to ');
disp('test, where t is an un-seen stimulus');