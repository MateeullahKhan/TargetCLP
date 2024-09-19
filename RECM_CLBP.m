%% Code to extract the RECM_LBP
clear all
clc;
[data, sequence]= fastaread('Clathrin_Training.fasta');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    RECM_T = RECMT(SEQ);
    P = uint8(255 * mat2gray(RECM_T));
	FF=Process_CLBP(P);
    RECM_CLBP_Clath_Training(i,:)=FF;
end

save RECM_CLBP_Clath_Training RECM_CLBP_Clath_Training;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
csvwrite('RECM_CLBP_Clath_Training.csv',RECM_CLBP_Clath_Training);