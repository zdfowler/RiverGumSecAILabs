conda create -n lab22 \
    python=3.11 \
    pytorch-cuda=12.1 \
    pytorch cudatoolkit xformers -c pytorch -c nvidia -c xformers \
    -y
conda activate lab22
pip install unsloth
pip install jupyter
echo "########################################################"
echo " Lab Setup is complete."
echo " cd <lab directory> and use the jupyter-notebook command"
echo "########################################################"
