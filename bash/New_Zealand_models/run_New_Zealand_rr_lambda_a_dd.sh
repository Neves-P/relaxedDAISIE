#!/bin/bash
#SBATCH --time=9-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=New_Zealand
#SBATCH --output=/home/p287218/relaxedDAISIE/logs/New_Zealand_rr_lambda_a_dd%a.log
#SBATCH --array=1-10
#SBATCH --mem=5GB

module load R
Rscript /home/p287218/relaxedDAISIE/scripts/New_Zealand_models/New_Zealand_rr_lambda_a_dd.R ${SLURM_ARRAY_TASK_ID}