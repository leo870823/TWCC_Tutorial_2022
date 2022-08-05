module purge
module load miniconda3  cuda/10.2 
conda create --name test python=3.8
conda activate test
conda install pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 cudatoolkit=10.2 -c pytorch
