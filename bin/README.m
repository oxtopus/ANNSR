%to load stimuli, run loadstim
%to initialize network, run ptron_one.m
%to train network, run cyclelearn_one.m
%for explaination of why it works, see ANNSpeechRecognition.pdf

Requires Malcolm Slaney's Auditory Toolbox (http://rvl4.ecn.purdue.edu/~malcolm/interval/1998-010/)

To manipulate parameters, manually edit ptron_one.m
To change target: target=t(i,:); where i is 1 through 8 (see last line of loadstim.m)
    it is not necessary to run ptron_one after chaning targets!
    
Sample test run as follows:

loadstim
ptron_one
cyclelearn_one