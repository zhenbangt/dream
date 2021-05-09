#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition gpgpu
#SBATCH --gres=gpu:p100:1
#SBATCH --cpus-per-task=4
#SBATCH --time=7-00:00:00


echo "0"

module load pytorch/1.4.0-python-3.7.4

echo "1"

cd /home/zhenbangt/dream/

echo "2"

source ~/virtualenv/python3.7.4/bin/activate

echo "3"



echo "4"

python main_varibad.py import -b environment=\"cooking\" -c configs/import.json
