function z=sigmoid(phi);

z=1./(1.+(1./exp(phi)));
%z=0.5*(tanh(phi)+1);