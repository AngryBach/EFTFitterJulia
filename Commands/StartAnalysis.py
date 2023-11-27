import os
import subprocess
import time
#'cG','ctGIm', 'cQd1',  
WCs = ['cG','ctGIm', 'cQd1','cQd8', 'cQj11','cQj18','cQj31','cQj38','cQu1',	'cQu8',	'ctd1',	'ctd8','ctGRe','ctj1','ctj8','ctu1','ctu8']

for w in WCs:
    output_dir = '/home/shmukher/EFTFitterJulia/Julia_files_'+w
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    output_dir2 = output_dir+'/Combined'
    if not os.path.exists(output_dir2):
        os.makedirs(output_dir2)
    
    output_dir3 = output_dir+'/Errorlogs'
    if not os.path.exists(output_dir3):
        os.makedirs(output_dir3)

    subprocess.getoutput('cp /home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Commands/Commands_'+w+'.jl '+output_dir)
    subprocess.getoutput('cp /home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Correlation_data.jl '+output_dir)
    subprocess.getoutput('cp /home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Summary.py '+output_dir)
    subprocess.getoutput('cp /home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Unfolded_totxt.jl '+output_dir)

    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Create_single_Obs.txt','r') as file0:
        data = file0.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/Create_single_Obs.py','w') as write0:
            write0.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/inputs_combined.txt','r') as file1:
        data = file1.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/Combined/inputs_combined.jl','w') as write1:
            write1.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/inputs_obs_sep.txt','r') as file2:
        data = file2.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/inputs_obs_sep.jl','w') as write2:
            write2.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/runEFTfitter_combined.txt','r') as file3:
        data = file3.read()
        data1 = data.replace('WCNAME', w)
        data1 = data1.replace('nocWCN', w[1:])
        with open(output_dir+'/Combined/runEFTfitter_combined.jl','w') as write3:
            write3.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/runEFTfitter.txt','r') as file4:
        data = file4.read()
        data1 = data.replace('WCNAME', w)
        data1 = data1.replace('nocWCN', w[1:])
        with open(output_dir+'/runEFTfitter.jl','w') as write4:
            write4.write(data1)

    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/RunJulia.txt','r') as file5:
        data = file5.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/RunJulia.sh','w') as write5:
            write5.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/RunCombined.txt','r') as file6:
        data = file6.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/Combined/RunCombined.sh','w') as write6:
            write6.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/Summary.txt','r') as file7:
        data = file7.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/Summary.py','w') as write7:
            write7.write(data1)
    
    with open('/home/shmukher/EFTFitterJulia/Julia_files_WC_template2/CL_posterior_plot.txt','r') as file8:
        data = file8.read()
        data1 = data.replace('WCNAME', w)
        with open(output_dir+'/CL_posterior_plot.py','w') as write8:
            write8.write(data1)
    
    subprocess.getoutput('python '+output_dir+'/Create_single_Obs.py')
    time.sleep(10)
    os.chdir(output_dir)
    subprocess.getoutput('sbatch RunJulia.sh')
    os.chdir('/home/shmukher/EFTFitterJulia')
    time.sleep(5)
    os.chdir(output_dir+'/Combined')    
    subprocess.getoutput('sbatch RunCombined.sh')
    os.chdir('/home/shmukher/EFTFitterJulia')
    
    
    os.chdir(output_dir)
    subprocess.getoutput('python Summary.py')
    time.sleep(2)
    subprocess.getoutput('python CL_posterior_plot.py')
    os.chdir('/home/shmukher/EFTFitterJulia')
    os.chdir(output_dir)
    subprocess.getoutput('python CL_posterior_plot.py')
    time.sleep(2)
    subprocess.getoutput('cp '+w+'_CL.pdf /home/shmukher/EFTFitterJulia/All_CL_Plots/')
    os.chdir('/home/shmukher/EFTFitterJulia')







