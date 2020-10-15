#!/bin/bash
#SBATCH --time=2-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=Juan_Fernandez
#SBATCH --output=/home/p287218/relaxedDAISIE/logs/Juan_Fernandez/Juan_Fernandez_bootstrap%a.log
#SBATCH --array=1-1000
#SBATCH --mem=1GB

module load R
Rscript /home/p287218/relaxedDAISIE/scripts/Juan_Fernandez_models/Juan_Fernandez_bootstrap.R ${SLURM_ARRAY_TASK_ID}