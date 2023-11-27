# python scripts/Unfolded_totxt.py >> Unfolded_totxt.jl
# This transfers all the differental unfolded data to a Julia file for EFTFitter to read.

import numpy as np
from ROOT import TFile, TH1F

file_nom = '/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUnfolded_nominalNLO_rb.root'
file_down = '/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUncert_down_rb.root'
file_up = '/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUncert_up_rb.root'
hist_rebin_names = ['h_jet_W_lead_pt_Rebin;1', 'h_jet_W_lead_y;1', 'h_jet_W_sublead_pt_Rebin;1', 'h_jet_W_sublead_y;1', 'h_jet_W_lead_jet_W_sublead_Dy;1', 'h_jet_W_lead_jet_W_sublead_Dphi;1', 'h_jet_rad_lead_pt_Rebin;1', 'h_jet_rad_lead_y;1', 'h_top_lep_jet_rad_lead_Dphi;1', 'h_top_had_jet_rad_lead_Dphi;1', 'h_jet_W_lead_jet_rad_lead_Dphi;1', 'h_mttbar_jet_rad_lead_Rebin;1', 'h_jet_rad_sublead_pt_Rebin;1', 'h_jet_rad_sublead_y;1', 'h_jet_rad_lead_jet_rad_sublead_Dy;1', 'h_jet_rad_lead_jet_rad_sublead_Dphi;1', 'h_top_lep_jet_rad_sublead_Dphi;1', 'h_top_had_jet_rad_sublead_Dphi;1', 'h_jet_W_lead_jet_rad_sublead_Dphi;1', 'h_m_jet_rad_lead_jet_rad_sublead_Rebin;1']

def extract_data(fname,hist):
    f1 = TFile.Open(fname)
    arr = []
    for i in range(f1.Get(hist).GetNbinsX()):
        arr.append(f1.Get(hist).GetBinContent(i+1))      
    return np.array(arr)

def extract_error(fname,hist):
    f1 = TFile.Open(fname)
    arr = []
    for i in range(f1.Get(hist).GetNbinsX()):
        arr.append(f1.Get(hist).GetBinError(i+1))      
    return np.array(arr)

if __name__ == "__main__":

    nominal_dict = {}
    stat_dict = {}
    down_dict = {}
    up_dict = {}
    for h in hist_rebin_names:
        h1 = h[:-2]       
        nominal_dict[h1] = extract_data(file_nom, h1)
        stat_dict[h1] = extract_error(file_nom, h1)
        down_dict[h1] = extract_data(file_down, h1)
        up_dict[h1] = extract_data(file_up, h1)
    

    
    for key in nominal_dict:
        val_nom = nominal_dict[key]
        val_stat = stat_dict[key]
        val_down = np.abs(down_dict[key])
        val_up = up_dict[key]
        val_max = np.maximum.reduce([val_down,val_up])
        # print(np.array_equiv(val_max, val_up))
        key = key[2:]
        print('obs_'+key+' = [', end= "")
        print(*val_nom, sep=",", end = "")
        print(']')
        print('uncs_stat_'+key+' = [', end= "")
        print(*val_stat, sep=",", end = "")
        print(']')
        print('uncs_down_'+key+' = [', end= "")
        print(*val_down, sep=",", end = "")
        print(']')
        print('uncs_up_'+key+' = [', end= "")
        print(*val_up, sep=",", end = "")
        print(']')
        print('uncs_max_'+key+' = [', end= "")
        print(*val_max, sep=",", end = "")
        print(']')
        print()

    
        
