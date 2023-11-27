import os
import subprocess
import time


os.chdir('/home/shmukher/EFTFitterJulia/Julia_files_cQj11/Combined3')
subprocess.getoutput('julia runEFTfitter_combined.jl')

time.sleep(3*60*60)

os.chdir('/home/shmukher/EFTFitterJulia/Julia_files_cQj18/Combined3')
subprocess.getoutput('julia runEFTfitter_combined.jl')

time.sleep(3*60*60)

os.chdir('/home/shmukher/EFTFitterJulia/Julia_files_cQj31/Combined3')
subprocess.getoutput('julia runEFTfitter_combined.jl')

time.sleep(3*60*60)

os.chdir('/home/shmukher/EFTFitterJulia/Julia_files_cQj38/Combined3')
subprocess.getoutput('julia runEFTfitter_combined.jl')



   





