clc
clear all


fileFolder=fullfile('E:\Data\PSSMs\Train\PSSMs_Train');
dirOutput=dir(fullfile(fileFolder,'*.pssm'));
PSSM_XXXX={dirOutput.name}';
PSSM_XXXX = natsortfiles(PSSM_XXXX);
fileNames_PSSM = [];
Total_PSSMs=size(PSSM_XXXX,1)
for i=1:Total_PSSMs
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end


%%%%%%%%%%% Features extraction from PSSM %%%%%%%%%%%%%%%% 

for i=1:Total_PSSMs
    i
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);
    
    %%%%%%%%%%% CLBP-PSSM %%%%%%%%%%%%%%%%
    PSSM_IMG = uint8(255 * mat2gray(PSSM_Matrix));
    clbpfeat=Process_CLBP(PSSM_IMG);
    PSSM_CLBP_Clath_Training(i,:)=clbpfeat;
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

save PSSM_CLBP_Clath_Training PSSM_CLBP_Clath_Training;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
csvwrite('PSSM_CLBP_Clath_Training.csv',PSSM_CLBP_Clath_Training);
  
