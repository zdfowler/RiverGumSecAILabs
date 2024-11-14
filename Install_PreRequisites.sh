#!/bin/bash

if [ ! -e "/usr/bin/gcc" ]; then
	echo "[*] Installing GCC"
	sudo apt install gcc
fi
if [ ! -d "$HOME/miniconda3" ]; then
	echo "[*] Installing miniconda3"
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	/bin/bash Miniconda3-latest-Linux-x86_64.sh -b
	$HOME/miniconda3/bin/conda init
fi
echo "[*] Completed Installing PreRequisites"

