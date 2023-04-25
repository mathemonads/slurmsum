#!/bin/bash
#SBATCH --partition=debug
#SBATCH --ntasks=24
#SBATCH --tasks-per-node=24
#SBATCH -o /home/oihernandez/lab5/slurm.out
#SBATCH --mail-user=oihernandez@alaska.edu

#module load GCC
gcc -o /home/oihernandez/lab5/lab5.out /home/oihernandez/lab5/lab5.c
echo "Beginning ... "
/home/oihernandez/lab5/lab5.out
