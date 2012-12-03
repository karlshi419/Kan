%Generate sample time etc for real data
%digits(2);
Ts1=(3.28:-0.02:2.50)'; % Sample period
Ts2=(2.48:-0.02:2)';
Ts=[Ts1;Ts2];

SampleTime1=17;         % Fixed sample time, when data are stable,depend on pre-simulation
SampleTime2=15;

RstClk1=floor(SampleTime1./Ts1);    % # of cycles after reset
RstClk2=floor(SampleTime2./Ts2);

RstClk=[RstClk1;RstClk2];

LoopClk1_1=(SampleTime1./Ts1-RstClk1);% # of cycles prior to sample
LoopClk1_2=(SampleTime2./Ts2-RstClk2);
LoopClk1=[LoopClk1_1;LoopClk1_2];
%LoopClk1=roundn(LoopClk1,-1)   
LoopClk2=1-LoopClk1;             % # of cycles after sample, to ensure a complete cycle

fid=fopen('Ts_real.txt','wt');
fprintf(fid,'%1.2f\n',Ts);
fclose(fid);

fid=fopen('RstClk_real.txt','wt');
fprintf(fid,'%1.0f\n',RstClk);
fclose(fid);

fid=fopen('LoopClk_real.txt','wt');
fprintf(fid,'%1.2f\n',LoopClk1);
fclose(fid);

fid=fopen('LoopClk2_real.txt','wt');
fprintf(fid,'%1.2f\n',LoopClk2);
fclose(fid);
