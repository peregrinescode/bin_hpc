#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=00:59:59
#SBATCH --partition=compute

# Load up gaussian module
module load gaussian09

# example
g09 < $1 > ${1%.*}.log
