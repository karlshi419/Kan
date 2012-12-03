% Input data processing
Bitwidth=8;
%A=textread('A_in.txt');
A=textread('tiffany.txt');
for loopNo=1:1:Bitwidth-1   %Do not need Bitwidth-1 or less for simulation
    temp_A=fix(A/(10^loopNo))*(10^loopNo);
    filename=strcat('tiffany_',num2str(Bitwidth-loopNo),'.txt');%Generate file name
    %filename=strcat('A_',num2str(Bitwidth-loopNo),'.txt');%Generate file name
    precision=strcat('%',num2str(Bitwidth-loopNo),'.0f'); %Generate precision
    dlmwrite(filename,temp_A,'precision',precision);      %Write to file
end

% B=textread('B_in.txt');
% for loopNo=1:1:Bitwidth-1   %Do not need Bitwidth-1 or less for simulation
%     temp_B=fix(B/(10^loopNo))*(10^loopNo);
%     filename=strcat('B_',num2str(Bitwidth-loopNo),'.txt');%Generate file name
%     precision=strcat('%',num2str(Bitwidth-loopNo),'.0f'); %Generate precision
%     dlmwrite(filename,temp_B,'precision',precision);      %Write to file
% end
%temp_A = A/10;

