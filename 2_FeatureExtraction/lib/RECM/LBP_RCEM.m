%% Code to extract the PseRECM
[data, sequence]= fastaread('Alter_TR.fasta');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    Fea = PseRECM(SEQ)
end