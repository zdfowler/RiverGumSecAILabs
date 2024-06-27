#!/bin/bash

set -e
cat <<__EOF__

======================================================================
 This shell script uses CONDA to install all required AI development
 packages. You must have already created and activated your
 conda environment using:

	conda create -n ai python=3.10
	conda activate ai

 BEFORE using this script.  Press CTRL-C to cancel to ENTER to continue.

 Author: Joff Thyer and Derek Banks (c) 2024

======================================================================
__EOF__
read
conda install -yq tensorflow
conda install -yq huggingface_hub transformers pytorch
conda install -yq pandas numpy matplotlib
conda install -yq nltk seaborn plotly
conda install -yq scikit-learn
echo ""
echo "### Completed Installations ###"
