# TargetCLP
The code is the implementation of our method described in the paper “Matee Ullah, Shahid Akbar, Kashif Ahmad Khan, Ali Raza, Quan Zou; TargetCLP: clathrin proteins prediction combining transformed and evolutionary scale modeling-based multi-view features via weighted feature integration approach”.
## (I) 1_Data
There are two datasets in the data Folder:
### (1)	Train dataset
The benchmark training dataset "Clathrin_Training.fasta", which contains 1288 positive and 1133 negative peptides samples.
### (2)	Independent datasets
The independent dataset "Clathrin-Independent.fasta" contains a total of 485 protein sequences (258 positive and 227 negative samples). <br />
## (II) 2_FeatureExtractionCode
This folder contains the following Folder.
### (1)	lib
the folder "lib" contains all the features extraction related necessary codes used in this study.<br />
## (III)	3_FeatureFusion
3_FeatureFusion folder includes the following file
### (1)	DE.py
the Python file "DE.py" is the code that learns the best weights for feature sets. It is used to weightedly integrate all the feature sets.
## (IV)	4_FeatureSelection
4_FeatureSelection folder includes the following file.
### (1)	BinaryTreeGrowthAlgorithmforFeatureSelection
the BinaryTreeGrowthAlgorithmforFeatureSelection folder contains all required files related to the Binary Tree Growth Algorithm feature selection.
## (V) 5_ClassificationCode
5_ClassificationCode folder includes all the libraries for the SnBiLSTM classifier netowrk.
## (VI)	PSSM_CLBP.m
PSSM_CLBP.m is the MATLAB  file for extracting <br />
(1) 	PSSM-CLBP (Position Specific Scoring Matrix-Completed Local Binary Pattern) <br />
## (VII) RECM_CLBP.m 
RECM_CLBP.m is the MATLAB  File for extracting <br /> 
(1)	RECM-CLBP (Residue-wise Energy Contact Matrix-Completed Local Binary Pattern) <br />
## (VIII) extract_QLC.m
extract_QLC.m is the MATLAB  File for extracting <br /> 
(1)	QLC (Qualitative characteristics feature) <br />
## (IX) extarctESMEmbeddings.py
extarctESMEmbeddings.py is the Python File for extracting <br /> 
(1)	ESM embeddings (Evolutionary Scale Modeling based embeddings) <br />
## (X) featureSelectClathrin.m
featureSelectClathrin.m is the MATLAB  File for selecting optimal features using <br /> 
(1)	BTGA (Binary Tree Growth Algorithm) <br />

## NOTE: 
For Feature integration and Classification, please directly run them from their corresponding folders.

## (XI)	Contact
If you are interested in our work or if you have any suggestions and questions about our research work, please contact us at: E-mail: khan_bcs2010@hotmail.com.
