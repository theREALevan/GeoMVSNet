#!/bin/bash

# Wrapper script for BaseEvalMain_web_args executable
# Usage: ./run_baseeval.sh <dataPath> <plyPath> <resultsPath> <method_string> <thisset>

dataPath=$1
plyPath=$2
resultsPath=$3
method_string=$4
thisset=$5

cd datasets/evaluations/dtu_parallel

# Use the MATLAB Runtime from the user's home directory
MCRROOT="/home/yz864/MATLAB/MATLAB_Runtime/v914/R2023a"

# Set up the MATLAB Runtime environment
LD_LIBRARY_PATH=.:${MCRROOT}/runtime/glnxa64
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/bin/glnxa64
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/sys/os/glnxa64
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/sys/opengl/lib/glnxa64
export LD_LIBRARY_PATH

# Run the compiled executable with command line arguments
./BaseEvalMain_web_args "$dataPath" "$plyPath" "$resultsPath" "$method_string" "$thisset"

cd ../../.. 