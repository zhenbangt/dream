#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition gpgpu
#SBATCH --gres=gpu:p100:1
#SBATCH --cpus-per-task=4
#SBATCH --time=7-00:00:00


echo "0"

module load pytorch/1.4.0-python-3.7.4
module load xvfb


echo "1"

cd /home/zhenbangt/dream/

echo "2"

source ~/virtualenv/python3.7.4/bin/activate

echo "3"

echo "dream old miniworld"

echo "4"

xvfb-run -a -s "-screen 0 1024x768x24 -ac +extension GLX +render -noreset" python3 main_varibad.py e-rl2 -b environment=\"miniworld_sign\" -c configs/rl2.json -c configs/rl2-miniworld.json
