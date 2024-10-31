#!/bin/bash

set -e
cat <<__EOF__

======================================================================
 This shell script uses CONDA to install all required AI development
 packages. You must have already created and activated your
 conda environment using:

	conda create -n unsloth python=3.12
	conda activate unsloth

 BEFORE using this script.  Press CTRL-C to cancel to ENTER to continue.

 Author: Joff Thyer and Derek Banks (c) 2024

======================================================================

-< Press ENTER to Continue or CTRL-C to QUIT >-

__EOF__
read
if [[`uname -r` != *"WSL2"* ]]; then
	echo "[-] ERROR: Script only works in WSL2 environment"
	exit
fi
echo "[*] ## Target System is WSL2"
echo "[+] Installing: jupyter"
conda install jupyter >/dev/null 2>&1
echo "[+] Installing: unsloth"
pip install -q --upgrade unsloth >/dev/null 2>&1
echo "[+] Installing: unsloth"
pip install --no-warn-conflicts git+https://github.com/huggingface/transformers.git git+https://github.com/huggingface/trl.git >/dev/null 2>&1
echo "### Successfully Completed Installations! ###"
