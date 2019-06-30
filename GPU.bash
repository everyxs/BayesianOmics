ssh yan30@carbonate.uits.iu.edu

squeue
sinfo
srun -p dl -N 1 --ntasks-per-node=12 --gres=gpu:p100:1 --time=12:00:00 --pty bash

netstat -atu

cd /gpfs/projects/UITS/IUNI/IMAGENE/
module swap python/3.6.8
export PATH=$PATH:~/.local/bin
pip install jupyterlab --user
jupyter serverextension enable --py jupyterlab
jupyter kernelspec list

pipinstall pgustat --user
gpustat
jupyter notebook --no-browser --port=8000
lsof -i -P -n
-----------To check | kill ports, use
lsof -ti:8000 | xargs kill -9

Open another terminal locally,
ssh -t -t yan30@carbonate.uits.iu.edu -L 8001:localhost:8000 ssh dl1 -L 8000:localhost:8000
Point your browser to localhost:8001
