#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=l930057@gmail.com
#SBATCH --job-name=test    ## job name
#SBATCH --nodes=1                ## 索取 1 節點
#SBATCH --cpus-per-task=4       ## 該 task 索取 8 CPUs
#SBATCH --gres=gpu:1             ## 每個節點索取 1 GPUs
#SBATCH --account=MST110448    ## iService_ID 請填入計畫ID(ex: MST108XXX)，扣款也會根據此計畫ID
#SBATCH --partition=gp1d        ## gtest 為測試用 queue，後續測試完可改 gp1d(最長跑1天)、gp2d(最長跑2天)、p4d(最長跑4天)

# Environment setting
module purge
module load miniconda3 cuda/10.2 
conda activate test

# Check Environment Varables
echo "Running on hosts: $SLURM_NODELIST"
echo "Running on $SLURM_NNODES nodes."
echo "Running $SLURM_NTASKS tasks."

# Run Commands
python3 mnist.py


