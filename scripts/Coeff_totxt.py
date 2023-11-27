# Convert the cvs files with the fit coefficients into text file in the format needed for EFTFitter.
# python scripts/Coeff_totxt.py --WCNAME ctGRe > Julia_files_WC_template2/Coeffs/Coeffs_ctGRe.py
# Definitely better way to do this.
 
import numpy as np
import pandas as pd
from collections import Counter

import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--WCNAME', type=str, required=True)
args = parser.parse_args()

P2d0 = pd.read_csv('/home/shmukher/EFTFitterJulia/templatefitter/Fits/'+args.WCNAME+'_werr/'+args.WCNAME+'_fits.csv')

x = Counter(P2d0['count'])
bin_width = []
for idx in range(20):
    bin_width.append(x[idx])

hist_rebin_names = ['h_jet_W_lead_pt_Rebin;1', 'h_jet_W_lead_y;1', 'h_jet_W_sublead_pt_Rebin;1', 'h_jet_W_sublead_y;1', 'h_jet_W_lead_jet_W_sublead_Dy;1', 'h_jet_W_lead_jet_W_sublead_Dphi;1', 'h_jet_rad_lead_pt_Rebin;1', 'h_jet_rad_lead_y;1', 'h_top_lep_jet_rad_lead_Dphi;1', 'h_top_had_jet_rad_lead_Dphi;1', 'h_jet_W_lead_jet_rad_lead_Dphi;1', 'h_mttbar_jet_rad_lead_Rebin;1', 'h_jet_rad_sublead_pt_Rebin;1', 'h_jet_rad_sublead_y;1', 'h_jet_rad_lead_jet_rad_sublead_Dy;1', 'h_jet_rad_lead_jet_rad_sublead_Dphi;1', 'h_top_lep_jet_rad_sublead_Dphi;1', 'h_top_had_jet_rad_sublead_Dphi;1', 'h_jet_W_lead_jet_rad_sublead_Dphi;1', 'h_m_jet_rad_lead_jet_rad_sublead_Rebin;1']


x = [0] + np.cumsum(bin_width).tolist()
df1 = P2d0[['a0','a1','a2']]

for idx in range(len(bin_width)):
    s = x[idx]
    e = x[idx+1]
    df2 = df1[s:e]
    print('coeffs_'+hist_rebin_names[idx][2:-2]+' = ', df2.values.tolist())
    print()
