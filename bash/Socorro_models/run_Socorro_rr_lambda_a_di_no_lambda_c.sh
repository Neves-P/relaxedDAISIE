#!/bin/bash
#SBATCH --time=2-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=Socorro
#SBATCH --output=/data/p287218/relaxedDAISIE/logs/Socorro/Socorro_rr_lambda_a_di_no_lambda_c%a.log
#SBATCH --array=1-10
#SBATCH --mem=1GB

module load R
Rscript /data/p287218/relaxedDAISIE/scripts/Socorro_models/Socorro_rr_lambda_a_di_no_lambda_c.R ${SLURM_ARRAY_TASK_ID}