function CLBP_S_MCH1 = Process_CLBP(image)
load Map.mat
[CLBP_S,CLBP_M,CLBP_C] = clbp(image,1,8,map1,'x');
CLBP_SH = hist(CLBP_S(:),0:map1.num-1);
CLBP_MH = hist(CLBP_M(:),0:map1.num-1);
CLBP_MC = [CLBP_M(:),CLBP_C(:)];
Hist3D = hist3(CLBP_MC,[map1.num,2]);
CLBP_MCH = reshape(Hist3D,1,numel(Hist3D));
CLBP_S_MCH1 = [CLBP_SH,CLBP_MH,CLBP_MCH];

% [CLBP_S,CLBP_M,CLBP_C] = clbp(image,2,16,map2,'x');
% CLBP_SH = hist(CLBP_S(:),0:map2.num-1);
% CLBP_MH = hist(CLBP_M(:),0:map2.num-1);
% CLBP_MC = [CLBP_M(:),CLBP_C(:)];
% Hist3D = hist3(CLBP_MC,[map2.num,2]);
% CLBP_MCH = reshape(Hist3D,1,numel(Hist3D));
% CLBP_S_MCH2 = [CLBP_SH,CLBP_MCH];
% CLBP_feat=[CLBP_S_MCH1 CLBP_S_MCH2];
end
%CLBP_feat = [CLBP_S_MCH1];