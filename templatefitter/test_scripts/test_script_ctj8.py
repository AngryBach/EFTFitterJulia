
from TemplateFitter import *
import os

SM_file = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dNLO_EFT_nominal/Default/dDefault_rb_rw.root")
ctj8_m1p4_file = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dNLO_EFT_nominal/ctj8/dctj8_m1p4_rb_rw.root")
ctj8_m1p0_file = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dNLO_EFT_nominal/ctj8/dctj8_m1p0_rb_rw.root")
ctj8_m0p5_file = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dNLO_EFT_nominal/ctj8/dctj8_m0p5_rb_rw.root")
ctj8_p0p5_file = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dNLO_EFT_nominal/ctj8/dctj8_p0p5_rb_rw.root")
Unf_data = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUnfolded_nominalNLO_rb.root")
Unf_down = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUncert_down_rb.root")
Unf_up = ROOT.TFile("/home/shmukher/MyAnalysisX21.2.162/Plots2/dHistograms/dUnfolded/dUncert_up_rb.root")

parameter_list = ['ctj8']
func_form = 'pol'
coeffs = []
hist_rebin_names = ['h_jet_W_lead_pt_Rebin;1', 'h_jet_W_lead_y;1', 'h_jet_W_sublead_pt_Rebin;1', 'h_jet_W_sublead_y;1', 'h_jet_W_lead_jet_W_sublead_Dy;1', 'h_jet_W_lead_jet_W_sublead_Dphi;1', 'h_jet_rad_lead_pt_Rebin;1', 'h_jet_rad_lead_y;1', 'h_top_lep_jet_rad_lead_Dphi;1', 'h_top_had_jet_rad_lead_Dphi;1', 'h_jet_W_lead_jet_rad_lead_Dphi;1', 'h_mttbar_jet_rad_lead_Rebin;1', 'h_jet_rad_sublead_pt_Rebin;1', 'h_jet_rad_sublead_y;1', 'h_jet_rad_lead_jet_rad_sublead_Dy;1', 'h_jet_rad_lead_jet_rad_sublead_Dphi;1', 'h_top_lep_jet_rad_sublead_Dphi;1', 'h_top_had_jet_rad_sublead_Dphi;1', 'h_jet_W_lead_jet_rad_sublead_Dphi;1', 'h_m_jet_rad_lead_jet_rad_sublead_Rebin;1']

hist_labels = [r'$ \mathrm{p_T^{jet-W-lead}}$',r'$\mathrm{|y^{jet-W-lead}|}$',r'$ \mathrm{p_T^{jet-W-sublead}}$',r'$\mathrm{|y^{jet-W-sublead}|}$',r'$\mathrm{|\Delta y^{jet-W-lead\ -\ jet-W-sublead}|}$',r'$\mathrm{|\Delta \phi^{jet-W-lead\ -\ jet-W-sublead}|}$',
    r'$\mathrm{p_T^{jet-rad-lead}}$',r'$\mathrm{|y^{jet-rad-lead}|}$',r'$\mathrm{|\Delta \phi^{toplep\ -\ jet-rad-lead}|}$',r'$\mathrm{|\Delta \phi^{tophad\ -\ jet-rad-lead}|}$',r'$\mathrm{|\Delta \phi^{jet-W-lead\ -\ jet-rad-lead}|}$',r'$\mathrm{ m^{t \bar t\ -\ jet-rad-lead}}$',
    r'$\mathrm{p_T^{jet-rad-sublead}}$', r'$\mathrm{|y^{jet-rad-sublead}|}$', r'$\mathrm{|\Delta y^{jet-rad-lead\ -\ jet-rad-sublead}|}$', r'$\mathrm{|\Delta \phi^{jet-rad-lead\ -\ jet-rad-sublead}|}$',
    r'$\mathrm{|\Delta \phi^{toplep\ -\ jet-rad-sublead}|}$',r'$\mathrm{|\Delta \phi^{tophad\ -\ jet-rad-sublead}|}$',r'$\mathrm{|\Delta \phi^{jet-W-lead\ -\ jet-rad-sublead}|}$',r'$\mathrm{ m^{jet-rad-lead\ -\ jet-rad-sublead}}$',
    r'Combined']

for i in range(len(hist_rebin_names)):
    var_name = hist_rebin_names[i][:-2]

    temp = TemplateFitter(parameter_list, func_form)

    temp.add_template([0.0], SM_file.Get(var_name))
    temp.add_template([-1.4], ctj8_m1p4_file.Get(var_name))
    temp.add_template([-1], ctj8_m1p0_file.Get(var_name))
    temp.add_template([-0.5], ctj8_m0p5_file.Get(var_name))
    temp.add_template([0.5], ctj8_p0p5_file.Get(var_name))

    temp.fit()
    
    path = '/home/shmukher/EFTFitterJulia/templatefitter/Fits/ctj8_werr/'
    if not os.path.exists(path): 
        os.makedirs(path)
    if i < 10:
        v = '0'+str(i)+var_name[2:]
    else:
        v = str(i)+var_name[2:]
    temp.plot_functions(path+v) #var_name[2:]
    temp.plot_templates(path+v)
    temp.plot_ratios(Unf_data.Get(var_name), Unf_down.Get(var_name), Unf_up.Get(var_name),
                     path+v, hist_labels[i])

    # temp.Info()
    # temp.PrintCoeffs()

    # print(temp._fit_coef)

    
    for bin in range(len(temp._fit_coef)):
        coeffs.append([i,bin,temp._fit_coef[bin][0],temp._fit_coef[bin][1],temp._fit_coef[bin][2]])
    # print(coeffs)

coeffs=np.asarray(coeffs)
xd=pd.DataFrame(coeffs,columns=['count','bin_no','a0','a1','a2'])  
xd.to_csv(path+parameter_list[0]+'_fits.csv',index=False)
df1 = xd[['a0','a1','a2']]

