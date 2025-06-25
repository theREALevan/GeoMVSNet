#!/bin/bash

echo "Compiling MATLAB evaluation scripts..."

# Change to the evaluation directory
cd datasets/evaluations/dtu_parallel

# Compile BaseEvalMain_web_args.m (with command line arguments)
echo "Compiling BaseEvalMain_web_args.m..."
mcc -m BaseEvalMain_web_args.m -a *.m -o BaseEvalMain_web_args

# Compile ComputeStat_web_args.m (with command line arguments)
echo "Compiling ComputeStat_web_args.m..."
mcc -m ComputeStat_web_args.m -a *.m -o ComputeStat_web_args

echo "Compilation completed!"
echo "Generated executables:"
ls -la BaseEvalMain_web_args ComputeStat_web_args

cd ../../.. 