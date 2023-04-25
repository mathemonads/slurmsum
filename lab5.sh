#!/bin/bash
#SBATCH --partition=debug
#SBATCH --ntasks=24
#SBATCH --tasks-per-node=24
#SBATCH -o ./slurm.txt
#SBATCH --mail-user=oihernandez@alaska.edu

module load GCC

gcc -o ./lab5.out ./lab5.c
echo "Beginning ... "
./lab5.out
