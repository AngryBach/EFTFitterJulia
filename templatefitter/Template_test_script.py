# Reads in "Template_test_script.txt" and replaces placeholders to create individual python files for 
# bin-by-bin template fitting. We are fitting differential MC NLO with MC error bars although the error
# bars dont change the fit values. 

import numpy as np
from eft_dict import eft_dict
import os

WCs = ['ctGRe','ctj1','cQd1', 'cQu1', 'ctj8', 'cQd8', 'cQu8', 'ctd1', 'ctu1', 'cQj11', 'cQj31', 'ctd8', 'ctu8', 'cQj38', 'cQj18', 'ctGIm', 'cG']

for i in WCs:
    val_list  = eft_dict[i][2]
    label_list = []
    label = ''
    for v in val_list:
        v = float(v)
        label += i+'_'
        label += 'p' if v > 0 else 'm'
        label += str(abs(v)).replace('.','p')
        label_list.append(label)
        label = ''
    

    with open('/home/shmukher/EFTFitterJulia/templatefitter/Template_test_script.txt','r') as file:
        data = file.read()
        data1 = data.replace('WC1',str(label_list[0]))
        data1 = data1.replace('WC2',str(label_list[1]))
        data1 = data1.replace('WC3',str(label_list[2]))
        data1 = data1.replace('WC4',str(label_list[3]))

        data1 = data1.replace('WCvalue1',str(val_list[0]))
        data1 = data1.replace('WCvalue2',str(val_list[1]))
        data1 = data1.replace('WCvalue3',str(val_list[2]))
        data1 = data1.replace('WCvalue4',str(val_list[3]))

        data1 = data1.replace('WCname',i)

        with open('/home/shmukher/EFTFitterJulia/templatefitter/test_scripts/test_script_'+i+'.py', 'w') as file2:
            file2.write(data1)
        
        
        




