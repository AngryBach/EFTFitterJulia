# Takes the "command_template.txt" and replaces placeholders and saves into "Commands_WC.jl"

import numpy as np
from ROOT import TFile

import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--WCNAME', type=str, required=True)
args = parser.parse_args()

# import Julia_files_WC_template2.Coeffs.Coeffs_ctGRe as C
exec('import Julia_files_WC_template2.Coeffs.Coeffs_'+args.WCNAME+' as C')

hist_rebin_names = ['h_jet_W_lead_pt_Rebin;1', 'h_jet_W_lead_y;1', 'h_jet_W_sublead_pt_Rebin;1', 'h_jet_W_sublead_y;1', 'h_jet_W_lead_jet_W_sublead_Dy;1', 'h_jet_W_lead_jet_W_sublead_Dphi;1', 'h_jet_rad_lead_pt_Rebin;1', 'h_jet_rad_lead_y;1', 'h_top_lep_jet_rad_lead_Dphi;1', 'h_top_had_jet_rad_lead_Dphi;1', 'h_jet_W_lead_jet_rad_lead_Dphi;1', 'h_mttbar_jet_rad_lead_Rebin;1', 'h_jet_rad_sublead_pt_Rebin;1', 'h_jet_rad_sublead_y;1', 'h_jet_rad_lead_jet_rad_sublead_Dy;1', 'h_jet_rad_lead_jet_rad_sublead_Dphi;1', 'h_top_lep_jet_rad_sublead_Dphi;1', 'h_top_had_jet_rad_sublead_Dphi;1', 'h_jet_W_lead_jet_rad_sublead_Dphi;1', 'h_m_jet_rad_lead_jet_rad_sublead_Rebin;1']
coeff_names = ['coeffs_'+h1[2:-2] for h1 in hist_rebin_names]
bin_width = [9,10,7,10,10,10,10,10,7,7,10,7,8,10,10,10,7,7,10,8]

with open(r'/home/shmukher/EFTFitterJulia/scripts/command_template.txt', 'r') as file:
    data = file.read()
    for idx in range(len(hist_rebin_names)):
        
        exec('XX = C.'+coeff_names[idx])
        h = hist_rebin_names[idx]
        data1 = data.replace('HIST', h[2:-2])
        data1 = data1.replace('DATA', str(XX) )
        data1 = data1.replace('BCOUNT', str(bin_width[idx]) )
        data1 = data1.replace('WCNAME', 'ctGRe')
        
        with open(r'/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Commands/Commands_ctGRe.jl', 'a') as file:
            file.write(data1)

