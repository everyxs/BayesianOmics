ssh yan30@carbonate.uits.iu.edu

cd /gpfs/projects/UITS/IUNI/IMAGENE/
module swap python/3.6.8
export PATH=$PATH:~/.local/bin
pip install jupyterlab --user
jupyter serverextension enable --py jupyterlab

squeue
sinfo
srun -p dl -N 1 --ntasks-per-node=12 --gres=gpu:p100:1 --time=12:00:00 --pty bash

jupyter toree install --replace --spark_home=$SPARK_HOME --kernel_name="Spark" --spark_opts="--packages com.databricks:spark-xml_2.11:0.5.0;org.zouzias:spark-lucenerdd_2.11:0.3.7 --master spark://c240.karst.uits.iu.edu:7077 --driver-memory 8G --executor-memory 15G --executor-cores 4 --conf spark.driver.maxResultSize=8g" --user
jupyter notebook --no-browser --port=8000
-----------To check | kill ports, use
lsof -ti:8000 | xargs kill -9
