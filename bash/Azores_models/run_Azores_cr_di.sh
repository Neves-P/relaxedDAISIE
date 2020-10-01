#!/bin/bash
#SBATCH --time=9-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=Azores
#SBATCH --output=/home/p287218/relaxedDAISIE/logs/Azores_cr_di%a.log
#SBATCH --array=1-10
#SBATCH --mem=5GB

module load R
Rscript /home/p287218/relaxedDAISIE/scripts/Azores_models/Azores_cr_di.R ${SLURM_ARRAY_TASK_ID}