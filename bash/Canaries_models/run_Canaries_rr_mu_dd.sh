#!/bin/bash
#SBATCH --time=2-23:00:00
#SBATCH --partition=gelifes
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=Canaries
#SBATCH --output=/home/p287218/relaxedDAISIE/logs/Canaries/Canaries_rr_mu_dd%a.log
#SBATCH --array=1-10
#SBATCH --mem=5GB

module load R
Rscript /home/p287218/relaxedDAISIE/scripts/Canaries_models/Canaries_rr_mu_dd.R ${SLURM_ARRAY_TASK_ID}
