LCG_RELEASE="LCG_103"
PLATFORM="x86_64-centos7-gcc12-opt"

source /cvmfs/sft.cern.ch/lcg/views/${LCG_RELEASE}/${PLATFORM}/setup.sh

export SourceDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export PYTHONPATH=$SourceDIR/python:$SourceDIR/script:$SourceDIR:$PYTHONPATH