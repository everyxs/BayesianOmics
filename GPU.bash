ssh yan30@carbonate.uits.iu.edu

squeue
sinfo
srun -p dl -N 1 --ntasks-per-node=12 --gres=gpu:v100:1 --time=48:00:00 --pty bash

netstat -atu

cd /gpfs/projects/UITS/IUNI/IMAGENE/
cd /gpfs/sciencegnome/
export PATH=$PATH:~/.local/bin

conda install -c anaconda tensorflow-gpu cudatoolkit=10.0 
conda install -c conda-forge jupyterlab
jupyter serverextension enable --py jupyterlab
jupyter kernelspec list

conda info -e
conda env create -f environment.yml --prefix /home/yan30/.conda
module load anaconda/3
source activate /home/yan30/.conda
-----use pip to overwrite the conda TF version-----
pip install --upgrade tensorflow-gpu==2.0 --user
pip install --upgrade tensorflow-probability==0.8 --user
conda clean --all
checkusage /u/yan30
cd /home/filsilva/OAGContest/

pip install gpustat --user
gpustat
nvidia-smi
ifconfig
THEANO_FLAGS='device=cuda,floatX=float32' jupyter notebook --no-browser --port=8000 --ip=149.165.230.95
lsof -i -P -n
-----------To check | kill ports, use
lsof -ti:8000 | xargs kill -9

Open a RED desktop
Point RED browser to 149.165.230.95/token

Open another terminal locally,
ssh -t -t yan30@carbonate.uits.iu.edu -L 8001:localhost:8000 ssh dl1 -L 8000:localhost:8000
Point your browser to localhost:8001
