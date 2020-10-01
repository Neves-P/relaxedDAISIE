#!/bin/bash
#SBATCH --time=9-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=Comoros
#SBATCH --output=/home/p287218/relaxedDAISIE/logs/Comoros_rr_lambda_a_di%a.log
#SBATCH --array=1-10
#SBATCH --mem=5GB

module load R
Rscript /home/p287218/relaxedDAISIE/scripts/Comoros_models/Comoros_rr_lambda_a_di.R ${SLURM_ARRAY_TASK_ID}
