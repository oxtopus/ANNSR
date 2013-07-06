%loadstim.m
%loads stimuli

[s1 fs]=wavread('../stimuli/one1.wav');
[s2 fs]=wavread('../stimuli/one2.wav');
[s3 fs]=wavread('../stimuli/one3.wav');
[s4 fs]=wavread('../stimuli/one4.wav');
[s5 fs]=wavread('../stimuli/one5.wav');
[s6 fs]=wavread('../stimuli/one6.wav');
[s7 fs]=wavread('../stimuli/one7.wav');
[s8 fs]=wavread('../stimuli/two1.wav');
[s9 fs]=wavread('../stimuli/two2.wav');
[s10 fs]=wavread('../stimuli/two3.wav');
[s11 fs]=wavread('../stimuli/two4.wav');
[s12 fs]=wavread('../stimuli/two5.wav');
[s13 fs]=wavread('../stimuli/two6.wav');
[s14 fs]=wavread('../stimuli/two7.wav');
[s15 fs]=wavread('../stimuli/three1.wav');
[s16 fs]=wavread('../stimuli/three2.wav');
[s17 fs]=wavread('../stimuli/three3.wav');
[s18 fs]=wavread('../stimuli/three4.wav');
[s19 fs]=wavread('../stimuli/three5.wav');
[s20 fs]=wavread('../stimuli/three6.wav');
[s21 fs]=wavread('../stimuli/three7.wav');
[s22 fs]=wavread('../stimuli/four1.wav');
[s23 fs]=wavread('../stimuli/four2.wav');
[s24 fs]=wavread('../stimuli/four3.wav');
[s25 fs]=wavread('../stimuli/four4.wav');
[s26 fs]=wavread('../stimuli/four5.wav');
[s27 fs]=wavread('../stimuli/four6.wav');
[s28 fs]=wavread('../stimuli/four7.wav');
[s29 fs]=wavread('../stimuli/five1.wav');
[s30 fs]=wavread('../stimuli/five2.wav');
[s31 fs]=wavread('../stimuli/five3.wav');
[s32 fs]=wavread('../stimuli/five4.wav');
[s33 fs]=wavread('../stimuli/five5.wav');
[s34 fs]=wavread('../stimuli/five6.wav');
[s35 fs]=wavread('../stimuli/five7.wav');
[s36 fs]=wavread('../stimuli/six1.wav');
[s37 fs]=wavread('../stimuli/six2.wav');
[s38 fs]=wavread('../stimuli/six3.wav');
[s39 fs]=wavread('../stimuli/six4.wav');
[s40 fs]=wavread('../stimuli/six5.wav');
[s41 fs]=wavread('../stimuli/six6.wav');
[s42 fs]=wavread('../stimuli/six7.wav');
[s43 fs]=wavread('../stimuli/seven1.wav');
[s44 fs]=wavread('../stimuli/seven2.wav');
[s45 fs]=wavread('../stimuli/seven4.wav');
[s46 fs]=wavread('../stimuli/seven4.wav');
[s47 fs]=wavread('../stimuli/seven5.wav');
[s48 fs]=wavread('../stimuli/seven6.wav');
[s49 fs]=wavread('../stimuli/seven8.wav');
[s50 fs]=wavread('../stimuli/eight1.wav');
[s51 fs]=wavread('../stimuli/eight2.wav');
[s52 fs]=wavread('../stimuli/eight3.wav');
[s53 fs]=wavread('../stimuli/eight4.wav');
[s54 fs]=wavread('../stimuli/eight5.wav');
[s55 fs]=wavread('../stimuli/eight6.wav');
[s56 fs]=wavread('../stimuli/eight7.wav');


[st1 fs]=wavread('../stimuli/one8.wav');
[st2 fs]=wavread('../stimuli/two8.wav');
[st3 fs]=wavread('../stimuli/three8.wav');
[st4 fs]=wavread('../stimuli/four8.wav');
[st5 fs]=wavread('../stimuli/five8.wav');
[st6 fs]=wavread('../stimuli/six8.wav');
[st7 fs]=wavread('../stimuli/seven7.wav');
[st8 fs]=wavread('../stimuli/eight8.wav');

for(i=1:56), 
    s=[];
    eval(['s=s' num2str(i) ';']);
    c=mfcc(s,fs,fix((3*fs)/(length(s)-256)));
    c=c(:);
    %c=c+abs(min(c));
    %c=c/sqrt(dot(c,c));
    eval(['c' num2str(i) '=c;']);
end

for(i=1:8),
    st=[];
    eval(['st=st' num2str(i) ';']);
    t=mfcc(st,fs,fix((3*fs)/(length(st)-256)));
    t=t(:);
    %t=t+abs(min(t));
    %t=t/sqrt(dot(t,t));
    eval(['t' num2str(i) '=t;']);
end

onestimuli=     [c1 c2 c3 c4 c5 c6 c7];
twostimuli=     [c8 c9 c10 c11 c12 c13 c14];
threestimuli=   [c15 c16 c17 c18 c19 c20 c21];
fourstimuli=    [c22 c23 c24 c25 c26 c27 c28];
fivestimuli=    [c29 c30 c31 c32 c33 c34 c35];
sixstimuli=     [c36 c37 c38 c39 c40 c41 c42];
sevenstimuli=   [c43 c44 c45 c46 c47 c48 c49];
eightstimuli=   [c50 c51 c52 c53 c54 c55 c56];

stimuli=([onestimuli twostimuli threestimuli fourstimuli fivestimuli sixstimuli sevenstimuli eightstimuli]);

t=zeros(7,length(stimuli));
t(1,1:7)=1;
t(2,8:14)=1;
t(3,15:21)=1;
t(4,22:28)=1;
t(5,29:35)=1;
t(6,36:42)=1;
t(7,43:49)=1;
t(8,50:56)=1;

target=t(1,:);

disp('Stimuli loaded, type ptron_one to create a new network');