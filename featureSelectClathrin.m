%-------------------------------------------------------------------------%
%  Genetic Algorithm (GA) source codes demo version                       %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%


%---Input------------------------------------------------------------------
% feat:  feature vector (instances x features)
% label: labelling
% N:     Number of chromosomes
% T:     Maximum number of generations
% CR:    Crossover rate
% MR:    Mutation rates
%*Note: k-value of KNN & hold-out setting can be modified in jFitnessFunction.m
%---Output-----------------------------------------------------------------
% sFeat: Selected features (instances x features)
% Sf:    Selected feature index
% Nf:    Number of selected features
% curve: Convergence curve
%--------------------------------------------------------------------------


%% Genetic Algorithm (version 1) 
%% clc, clear, close
% Benchmark data set 
% Feature Selection for weighted features
%% load the feature sets
load PSSM_CLBP_Clath_Training;
load QLC_feat_Clathrin_Training;
load RECM_CLBP_Clath_Training;
ESM_train = csvread('ESM-Features-Clathrin-train.csv');
optimizedWeights = readtable('optimezedSolutionDE.csv');
wESM = optimizedWeights.ESM;
wPSSM_CLBP = optimizedWeights.PSSM_CLBP;
wQLC = optimizedWeights.QLC;
wRECM_CLBP = optimizedWeights.RECM_CLBP;
trainL = ESM_train(:,1281);
ESM_train = ESM_train(:,1:1280)*wESM;
PSSM_CLBP_train = PSSM_CLBP_Clath_Training*wPSSM_CLBP;
QLC_train = Clathrin_QLC_Training*wQLC;
RECM_CLBP_train = RECM_CLBP_Clath_Training*wRECM_CLBP;

%% serially integrate feature sets
Clathrin_training = [ESM_train,PSSM_CLBP_train, QLC_train, RECM_CLBP_train];

%% feature Normalization
Clathrin_training = Standard_Normalization(Clathrin_training);

% Parameter setting
% N=10; T=100; CR=0.8; MR=0.3; 
% % Genetic Algorithm
% [sFeat,Sf,Nf,curve]=jGA1(Clathrin_training,trainL,N,T,CR,MR); 
% % Plot convergence curve
% figure(); plot(1:T,curve); xlabel('Number of generations');
% ylabel('Fitness Value'); title('GA'); grid on;

%% BTGA
N1=10; T1=100; N2=3; N3=5; N4=3; theta=0.8; lambda=0.5;
[sFeat,Sf,Nf,curve]=jBTGA(Clathrin_training,trainL,N1,T1,N2,N3,N4,theta,lambda);

%% Save Files
BTGAOpt_Clathrin_Training.training = sFeat;
BTGAOpt_Clathrin_Training.idx = Sf;
total_feat = size(Sf,2)+1;
sFeat(:,total_feat) = trainL;
save weightedBTGA_Clathrin_Training BTGAOpt_Clathrin_Training;
csvwrite('weightedBTGA_Clathrin_Training.csv',sFeat);



