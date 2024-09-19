import os
import subprocess
import pandas as pd
import torch
import esm
import torch.nn.functional as F


# Generate ESM embeddings in bulk
# In this function, I create embedding for each fasta sequence in the fasta file
# Extract file is taken from the github directory
def generate_bulk_embedding(fasta_file, output_dir, path_to_extract_file):
    subprocess.call('python extract_orig.py esm1b_t33_650M_UR50S {} {} --repr_layers 33 '
                    '--include mean --truncate'.format("{}".format(fasta_file),
                                                               "{}".format(output_dir)),
                    shell=True, cwd="{}".format(path_to_extract_file))
    
    
generate_bulk_embedding("E:/Clatherin_Transformer/Clathrin_Training.fasta",
                         "E:/Clatherin_Transformer/mean_Train",
                         "C:/Users/Mateeullah Khan/Downloads/TransFun-main/TransFun-main/preprocessing")