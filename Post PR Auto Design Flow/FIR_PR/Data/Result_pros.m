%Result_processing for truncation+overclocking results
clear;
format long;
Bitwidth=8;
sum_EF=importdata('./AutoTest/SumSailboatTradQ8T_328.txt');  %Read in Error Free Data
Pdata=sum(sum_EF.^2);   %Power of correct(error-free) data, golden reference

for Q=Bitwidth:-1:1   % Q denotes the truncated bits-1. Eg Q=Bitwidth means no truncated bits
    %Readin Error Free data
%     sum_EF=load(strcat('./AutoTest/SumTradQ',num2str(Q),'T_218.txt'));  %Read in Error Free Data
%     Pdata=sum(sum_EF.^2);   %Power of correct(error-free) data, golden reference
    for loopNo=1:1:65
        %Read in real simulation data
        %sum_real=load(strcat('Sim_resultQ',num2str(9-Q),'T',num2str(loopNo*2+2),'.txt'));  
        sum_real=load(strcat('./AutoTest/SumSailboatTradQ',num2str(Q),'T_',num2str(198+2*loopNo),'.txt'));  
        error=sum_real-sum_EF;%Total error: overclocking+truncation
        Perror(loopNo,Bitwidth-Q+1)=sum(error.^2);   %Power of error
        snr(loopNo,Bitwidth+1-Q)=10*log10(Pdata/Perror(loopNo,Bitwidth+1-Q));
        Exp(loopNo,Bitwidth+1-Q)=mean(abs(error));
        %Exp(loopNo-1,Q)=mean(error);
       % MSE(loopNo-1,Q)=sqrt(Perror(loopNo-1,Q)/(512*512)); %MeanSquareError
    end
end

% Calculate Truncation Error for each Quantization number
% sum_EF=importdata('./AutoTest/SumTradQ16T_218.txt');  %Read in Error Free Data
% for Q=Bitwidth:-1:1
%     sumQ=load(strcat('./AutoTest/SumTradQ',num2str(Q),'T_218.txt'));
%     error_trun=sumQ-sum_EF;
%     Exp_Trun(Q,1)=mean(abs(error_trun));
% end

dlmwrite('Exp_sailboat.txt',Exp,'\t');
dlmwrite('SNR_sailboat.txt',snr,'\t');

    
    
















%[row,col]=size(sum_EF);
%for i=1:row
%    abs_err(i,1)=abs(sum_EF(i,1)-sum_real(i,1));
%end
%format long;
%Exp=mean(abs_err)
%Eo=Exp/(2^2)

%SNR
%error=sum_real-sum_EF;
%Pdata=sum(sum_EF.^2);   %Power of correct(error-free) data
%Perror=sum(error.^2);   %Power of error
%snr=10*log10(Pdata/Perror)
