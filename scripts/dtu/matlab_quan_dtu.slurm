#!/bin/bash
#SBATCH --job-name=dtu_matlab_eval
#SBATCH --output=dtu_matlab_eval_%j.out
#SBATCH --error=dtu_matlab_eval_%j.err
#SBATCH --time=4:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=22
#SBATCH --mem=64G
#SBATCH --partition=elor

# Set the working directory to the project root
cd /home/yz864/GeoMVSNet

echo "Starting MATLAB quantitative evaluation at $(date)"
echo "Current working directory: $(pwd)"
echo "Using compiled MATLAB executables..."

# Run the MATLAB quantitative evaluation script
echo "Running matlab_quan_dtu.sh..."
bash scripts/dtu/matlab_quan_dtu.sh

echo "MATLAB quantitative evaluation completed at $(date)" 