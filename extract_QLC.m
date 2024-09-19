clc;
clear all;
feature_QLC=[];

[data, sequence] = fastaread('Clathrin_Training.fasta');
Total_Seq_train=size(sequence,2);

for i=1:(Total_Seq_train)
    i
    SEQ=sequence(i);
	FF=mctd(SEQ);
    SEQ=cell2mat(SEQ);
    feature_QLC(i,:)=FF;
end
QLC_feat_Clathrin_Training=[feature_QLC];
save QLC_feat_Clathrin_Training QLC_feat_Clathrin_Training;
csvwrite('QLC_feat_Clathrin_Training.csv',QLC_feat_Clathrin_Training);
