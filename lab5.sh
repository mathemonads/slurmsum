#!/bin/bash
#SBATCH --partition=debug
#SBATCH --ntasks=24
#SBATCH --tasks-per-node=24

module load GCC

gcc -o /home/oihernandez/lab5.out /home/oihernandez/lab5.sh

echo "Beginning ... "

/home/oihernandez/lab5.out
