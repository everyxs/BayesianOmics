ssh yan30@carbonate.uits.iu.edu

squeue
sinfo
srun -p dl -N 1 --ntasks-per-node=12 --gres=gpu:v100:1 --time=48:00:00 --pty bash

netstat -atu

cd /gpfs/projects/UITS/IUNI/IMAGENE/
module swap python/3.6.8
export PATH=$PATH:~/.local/bin
pip install jupyterlab --user
jupyter serverextension enable --py jupyterlab
jupyter kernelspec list

conda info -e
conda env create -f environment.yml
source activate tf-prob
pip install tensorflow-gpu==2.0.0-rc1
pip install --upgrade tensorflow-probability


pipinstall gpustat --user
gpustat
nvidia-smi
THEANO_FLAGS='device=cuda,floatX=float32' jupyter notebook --no-browser --port=8000 --ip=149.165.230.85
lsof -i -P -n
-----------To check | kill ports, use
lsof -ti:8000 | xargs kill -9

Open a RED desktop
Point RED browser to 149.165.230.85/token

Open another terminal locally,
ssh -t -t yan30@carbonate.uits.iu.edu -L 8001:localhost:8000 ssh dl1 -L 8000:localhost:8000
Point your browser to localhost:8001
