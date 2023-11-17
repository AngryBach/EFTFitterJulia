#Original file from somewhere else for bin-by-bin polynomial fitting, Modified by me. 

import ROOT
from Functions import *
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.collections import PatchCollection
from matplotlib.patches import Rectangle
from scipy.optimize import curve_fit
import numpy as np
import pandas as pd
ROOT.gStyle.SetOptStat(0)

font = {'size'  : 10 }
matplotlib.rc('font', **font)
plt.rcParams.update({
    "text.usetex": True,
    "font.family": "sans-serif",
    "mathtext.fontset": "dejavusans",
    "font.weight": 'bold'
})

#Make error boxes for plotting.
def make_error_boxes(ax, xdata, ydata, xerror, yerror, facecolor='k',edgecolor='none', alpha=0.2):
    errorboxes = [Rectangle((x - xe[0], y - ye[0]), xe.sum(), ye.sum())
                for x, y, xe, ye in zip(xdata, ydata, xerror.T, yerror.T)]
    pc = PatchCollection(errorboxes, facecolor=facecolor, alpha=alpha,
                        edgecolor=edgecolor)
    ax.add_collection(pc)
    artists = ax.errorbar(xdata, ydata, xerr=xerror, fmt='none', ecolor='k') #yerr=yerror

    return artists

class TemplateFitter:

    def __init__(self, param_list, func_form='pol'):
        
        # The supported functional forms.
        self._supported_functions = ['lin','pol','quad','custom']

        self._templates = []
        self._template_errors = []
        self._templates_TH1 = []

        self._templates_param_values = []

        self._template_dim = 0

        self._fit_coef = []

        self._fit_cov = []

        # Check the passed list of parameters.
        if (type(param_list) == list):
            if (len(param_list) > 0):
                self._parameters = param_list
            else:
                print("Please pass a list with at least 1 parameter name")
                exit(0)
        else:
            print("Please pass a list with at least 1 parameter name")
            exit(0)

        # Check the passed functional form.
        if (func_form in self._supported_functions):
            self._func_form = func_form
        else:
            print("Please choose one of the supported function types:")
            print(self._supported_functions)
            exit(0)


    # Print out some info on the object.
    def Info(self):

        print("==========Info=========")
        print('Parameters:')
        print(self._parameters)
        print('\n')

        print('Function type:')
        print(self._func_form)
        print('\n')

        print('Added templates:\n')
        for i in range(len(self._templates[0])):
            print("Template "+str(i)+": "+str(self._templates[i]))
            for j in range(len(self._parameters)):
                print(str(self._parameters[j])+"="+str(self._templates_param_values[j][i]))
            print('\n')
        if (len(self._fit_coef) == 0):
            print('Functions fit: No')
        else:
            print('Functions fit: Yes')
            print('Coefficients:')
            print(self._fit_coef)

    def add_template(self, param_value, template):

        # Check if the passed template is a TH1 object.
        if not (template.InheritsFrom(ROOT.TH1.Class())):
            print("Please pass a TH1 object as template.")
            exit(0)

        self._templates_TH1.append(template)

        # Let the first template define the output dimension. 
        if (len(self._templates) == 0):
            self._template_dim = template.GetNbinsX()
            
            # Make a list for fit values for each bin.
            for i in range(self._template_dim):
                self._templates.append([])
                self._template_errors.append([])
            
            for i in range(len(self._parameters)):
                self._templates_param_values.append([])
        
        # Check if the dimensions agree.
        if not (template.GetNbinsX() == self._template_dim):
            print("You passed a template of dimension "+str(template.GetNbinsX())+". Please pass a template with dimension "+str(self._template_dim)+" like the already present templates.")
            exit(0)

        # Check if the number of passed parameters agree.
        if not (len(param_value) == len(self._parameters)):
            print("You passed "+str(len(param_value))+" parameters with the template. Please pass "+str(len(self._parameters))+" parameters")
            exit(0)

        # Add the bin values to the array.
        for i in range(template.GetNbinsX()):
            self._templates[i].append(template.GetBinContent(i+1))
            self._template_errors[i].append(template.GetBinError(i+1))                  
            
        # Add the parameters to the list.
        for i in range(len(param_value)):
            self._templates_param_values[i].append(param_value[i])

    def fit(self):

        for i in range(len(self._templates)):
            popt = None
            cov = None

            if self._func_form == 'lin':
                
                if (len(self._parameters) == 1):
                    if (len(self._templates[0]) < 3):
                        print('The chosen function has 2 degrees of freedom. Please add at least 3 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(linear_1d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]))
                if (len(self._parameters) == 2):
                    if (len(self._templates[0]) < 4):
                        print('The chosen function has 3 degrees of freedom. Please add at least 4 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(linear_2d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]))
            
            if self._func_form == 'pol':
                if (len(self._parameters) == 1):
                    if (len(self._templates[0]) < 4):
                        print('The chosen function has 3 degrees of freedom. Please add at least 4 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(pol_2order_1d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]), sigma = np.array(self._template_errors[i]), absolute_sigma=True)
                if (len(self._parameters) == 2):
                    if (len(self._templates[0]) < 7):
                        print('The chosen function has 6 degrees of freedom. Please add at least 7 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(pol_2order_2d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]))

            if self._func_form == 'quad':
                if (len(self._parameters) == 1):
                    if (len(self._templates[0]) < 3):
                        print('The chosen function has 2 degrees of freedom. Please add at least 3 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(quad_1d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]))
                if (len(self._parameters) == 2):
                    if (len(self._templates[0]) < 4):
                        print('The chosen function has 3 degrees of freedom. Please add at least 4 templates to fit to.')
                        exit(0)

                    popt, cov = curve_fit(quad_2d, np.array(self._templates_param_values).ravel(), np.array(self._templates[i]))
            self._fit_coef.append(popt)
            self._fit_cov.append(cov)
            
    def predict(self, parameters):
        
        predictions = []

        if (len(self._fit_coef) == 0):
            print('Please perform a fit to templates before interpolating.')

        for i in range(len(self._templates)):
        
            if self._func_form == 'lin':
                if (len(self._parameters) == 1):
                    predictions.append(list(linear_1d(np.array(parameters), *(self._fit_coef[i])))[0])
                if (len(self._parameters) == 2):
                    predictions.append(list(linear_2d(np.array(parameters), *(self._fit_coef[i])))[0])
            
            if self._func_form == 'pol':
                if (len(self._parameters) == 1):
                    predictions.append(list(pol_2order_1d(np.array(parameters), *(self._fit_coef[i])))[0])
                if (len(self._parameters) == 2):
                    predictions.append(list(pol_2order_2d(np.array(parameters), *(self._fit_coef[i])))[0])

            if self._func_form == 'quad':
                if (len(self._parameters) == 1):
                    predictions.append(list(quad_1d(np.array(parameters), *(self._fit_coef[i])))[0])
                if (len(self._parameters) == 2):
                    predictions.append(list(quad_2d(np.array(parameters), *(self._fit_coef[i])))[0])

        return predictions

    def plot_functions(self,var_name):

        plt.clf()

        fig, axs = plt.subplots(len(self._templates))
        fig.suptitle('Observables interpolators')
        fig.set_figheight(50)
        fig.set_figwidth(10)


        min_par = np.amin(np.array(self._templates_param_values))
        max_par = np.amax(np.array(self._templates_param_values))

        plot_range = np.linspace(min_par,max_par,100)

        ydata = None
        ysigup = None
        ysigdown = None

        for i in range(len(self._templates)):
            popt = self._fit_coef[i]
            cov = self._fit_cov[i]
            if self._func_form == 'lin':
                if (len(self._parameters) == 1):
                    ydata = linear_1d(plot_range, *popt)
                    ysigup = linear_1d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1])
                    ysigdown = linear_1d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1])
                if (len(self._parameters) == 2):
                    ydata = linear_2d(plot_range, *popt)
                    ysigup = linear_2d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1]**0.5, popt[2] + cov[2,2]**0.5)
                    ysigdown = linear_2d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1]**0.5, popt[2] - cov[2,2]**0.5)
                    
            if self._func_form == 'pol':
                if (len(self._parameters) == 1):
                    ydata = pol_2order_1d(plot_range,*popt)
                    ysigup = pol_2order_1d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1]**0.5, popt[2] + cov[2,2]**0.5)
                    ysigdown = pol_2order_1d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1]**0.5, popt[2] - cov[2,2]**0.5)
                if (len(self._parameters) == 2):
                    ydata = pol_2order_2d(plot_range, *popt)
                    ysigup = pol_2order_2d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1]**0.5, popt[2] + cov[2,2]**0.5, popt[3] + cov[3,3]**0.5, popt[4] + cov[4,4]**0.5, popt[5] + cov[5,5]**0.5)
                    ysigdown = pol_2order_2d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1]**0.5, popt[2] - cov[2,2]**0.5, popt[3] - cov[3,3]**0.5, popt[4] - cov[4,4]**0.5, popt[5] - cov[5,5]**0.5)


            if self._func_form == 'quad':
                if (len(self._parameters) == 1):
                    ydata = quad_1d(plot_range, *popt)
                    ysigup = quad_1d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1]**0.5)
                    ysigdown = quad_1d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1]**0.5)

                if (len(self._parameters) == 2):
                    ydata = quad_2d(plot_range, *popt)
                    ysigup = quad_2d(plot_range, popt[0] + cov[0,0]**0.5, popt[1] + cov[1,1]**0.5, popt[2] + cov[2,2]**0.5)
                    ysigdown = quad_2d(plot_range, popt[0] - cov[0,0]**0.5, popt[1] - cov[1,1]**0.5, popt[2] - cov[2,2]**0.5)

            axs[i].plot(plot_range, ydata, 'g-', label=self._func_form)
            axs[i].plot(plot_range, ysigup, 'r--', label=str(self._func_form)+"+-1sigma")
            axs[i].plot(plot_range, ysigdown, 'r--')
            axs[i].fill_between(plot_range, ysigup, ysigdown, facecolor="gray", alpha=0.15)
            for j in range(len(self._templates_param_values[0])):
                label = self._parameters[0]+"="+str(self._templates_param_values[0][j])
                axs[i].plot(self._templates_param_values[0][j],self._templates[i][j],'o',label=label)

            axs[i].set(xlabel=self._parameters[0], ylabel='Observable bin '+str(i))
            axs[i].legend(prop={'size':5})

        plt.savefig(var_name+"_fitted_functions.pdf")
        plt.clf()

    def plot_templates(self,var_name, logy=True):

        c = ROOT.TCanvas("c","c",600,400) 
        leg = ROOT.TLegend(0.55,0.65,0.87,0.9)
        
        for i in range(len(self._templates_TH1)):
            self._templates_TH1[i].SetLineColor(i+1)
            leg.AddEntry(self._templates_TH1[i],str(self._templates_param_values[0][i]),"l")
            if i==0:
                self._templates_TH1[i].Draw("HIST")
            else:
                self._templates_TH1[i].Draw("HISTSAME")        

        leg.Draw("SAME")
        ROOT.gStyle.SetOptStat(0)
        ROOT.gPad.SetLogy(logy)

        c.SaveAs(var_name+"_templates.pdf")
        c.Close()  


    def plot_ratios(self, unf_hist, unf_down, unf_up, var_name, lab):

        # In summary, we are plotting
        # Ustat = max(|up err|,|down err|)
        # ( Udata +/- sqrt(Usyst^2 + Ustat^2) ) / Udata   is the gray band
        # Invidual plots are ( WC_data + WC_err ) / Udata   with no errorbars
        # xerr is just half of histogram bin width for plotting

        WC_data, WC_error, WC_de = [], [], []
        # full_data, full_err, full_de = [], [], []
        
        bin_edg, bin_cent, bin_wid = [], [], []
        Udata, Uerr, Udown, Uup = [], [], [], []
        for j in range(self._templates_TH1[0].GetNbinsX()):            
            Udata.append(unf_hist.GetBinContent(j+1))
            Uerr.append(unf_hist.GetBinError(j+1))
            Udown.append(unf_down.GetBinContent(j+1))
            Uup.append(unf_up.GetBinContent(j+1))

            bin_edg.append(unf_hist.GetBinLowEdge(j+1))
            bin_cent.append(unf_hist.GetBinCenter(j+1))
            bin_wid.append(unf_hist.GetBinWidth(j+1))

            if j== self._templates_TH1[0].GetNbinsX()-1:                       
                bin_edg.append(bin_edg[-1]+unf_hist.GetBinWidth(j+1))
        
        Umax_syst = np.array([np.maximum(abs(x),abs(y)) for x, y in zip(Udown, Uup)])
        Uquad_err = np.array([ (x**2+y**2)**0.5 for x, y in zip(Umax_syst, Uerr)])

        xdata = np.array(bin_cent)
        ydata = np.ones((len(xdata)))
        xerr =  np.array([x/2 for x in bin_wid])
        yerr = np.array([x / y for x, y in zip(Uquad_err, Udata)])

        fig, ax = plt.subplots(1)
        _ = make_error_boxes(ax, xdata, ydata, np.vstack((xerr,xerr)), np.vstack((yerr,yerr)))

        for i in range(len(self._templates_TH1)):
            for j in range(self._templates_TH1[0].GetNbinsX()):
                WC_data.append(self._templates_TH1[i].GetBinContent(j+1))
                WC_error.append(self._templates_TH1[i].GetBinError(j+1))           
                
            WC_de = [sum(x) for x in zip(WC_data, WC_error)]
            ax.errorbar(xdata, np.divide(np.array(WC_de),np.array(Udata)) , xerr=xerr, fmt='.',linestyle='None', label=self._parameters[0]+"="+str(self._templates_param_values[0][i]))
            WC_data, WC_error, WC_de = [], [], []

        ax.legend(loc='best')
        ax.set_xlabel(lab)
        ax.set_ylabel('MC/Data')
        ax.set_title(r'ATLAS Internal \ \ \ \ \ \ \  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ $ \sqrt{s}=13 \ \mathrm{TeV, \ 139 fb}^{-1}$')
        plt.savefig(var_name+"_ratio_plot.pdf",bbox_inches='tight')
        plt.clf()





