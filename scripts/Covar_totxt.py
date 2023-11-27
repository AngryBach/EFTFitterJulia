# Reads the raw "Raw_covar_data.txt" data which was copied from the ATL-COM note. 
# Essentially digitalizes the covariance matrices and also converts into correlation matrix for EFTFitter.
import numpy as np

hist_rebin_names = ['h_jet_W_lead_pt_Rebin;1', 'h_jet_W_lead_y;1', 'h_jet_W_sublead_pt_Rebin;1', 'h_jet_W_sublead_y;1', 'h_jet_W_lead_jet_W_sublead_Dy;1', 'h_jet_W_lead_jet_W_sublead_Dphi;1', 'h_jet_rad_lead_pt_Rebin;1', 'h_jet_rad_lead_y;1', 'h_top_lep_jet_rad_lead_Dphi;1', 'h_top_had_jet_rad_lead_Dphi;1', 'h_jet_W_lead_jet_rad_lead_Dphi;1', 'h_mttbar_jet_rad_lead_Rebin;1', 'h_jet_rad_sublead_pt_Rebin;1', 'h_jet_rad_sublead_y;1', 'h_jet_rad_lead_jet_rad_sublead_Dy;1', 'h_jet_rad_lead_jet_rad_sublead_Dphi;1', 'h_top_lep_jet_rad_sublead_Dphi;1', 'h_top_had_jet_rad_sublead_Dphi;1', 'h_jet_W_lead_jet_rad_sublead_Dphi;1', 'h_m_jet_rad_lead_jet_rad_sublead_Rebin;1']
bin_width = [9,10,7,10,10,10,10,10,7,7,10,7,8,10,10,10,7,7,10,8]


cum_bin_width = np.cumsum(bin_width).tolist()
start = [sum(x) for x in zip([0] +cum_bin_width, range(len(cum_bin_width)+1))]
end = [sum(x) for x in zip(cum_bin_width, range(len(cum_bin_width)))]


with open('/home/shmukher/EFTFitterJulia/scripts/Raw_covar_data.txt') as fp:
    bla = fp.readlines()

    for idx in range(len(bin_width)):
        
        mylines = bla[start[idx]:end[idx]]
        cov = [list(map(float, line.strip().split(' '))) for line in mylines]
        cov = np.asarray(cov, dtype=np.float32)
        Dinv = np.diag(1 / np.sqrt(np.diag(cov)))
        corr = Dinv @ cov @ Dinv

        with open("Correlation_data.txt", "a") as f:
            np.savetxt(f, corr, fmt="%5.5f")
            f.write("\n")


with open("Correlation_data.txt") as f:
    lines = f.read().splitlines()


with open("Correlation_data.txt", "w") as f:
    count = 0
    for idx in range(len(lines)):
        
        if idx in start:
            f.write('dist_corr_'+hist_rebin_names[count][2:-2]+" = ["+lines[idx]+";\n")
            count = count+1

        elif idx in [x - 1 for x in end]:
            f.write(lines[idx] + "]\n")

        elif lines[idx] != '':
            f.write(lines[idx] + ";\n")

        elif lines[idx] == '':
            f.write("\n")
        else:
            print('Error')
