#!/bin/bash

miniconda=Miniconda3-latest-Linux-x86_64.sh
condaPath=$HOME/miniconda3/bin:$PATH

mkdir ~/TMPconda
TMPDIR=~/TMPconda
# export TMPDIR=/TMPconda
# 
# mkdir /users/$USER/tmpconda
# TMPDIR=/users/$USER/tmpconda bash Miniconda2-latest-Linux-x86_64.sh
if [[ ! -f $miniconda ]]; then
	wget -c http://repo.continuum.io/miniconda/$miniconda
fi
chmod +x $miniconda
TMPDIR=~/TMPconda bash $miniconda -b -p $HOME/miniconda3
#bash $miniconda -b -p $HOME/miniconda3 #/home/$USER/miniconda3 #install in silent mode
echo "!------Update Paths to conda ---------!";
export PATH="$HOME/miniconda3/bin:$PATH" #/home/$USER/miniconda3/bin:$PATH" #
source ~/.bashrc

if conda list &>/dev/null; then
	echo "Conda Installed";
	# conda list
	#rm $miniconda # Remove the installer

	echo "!------Update CONDA & Activate GCC environment ---------!";	
	##NOT NEEDED EVERY TIME
	conda update -n base -c defaults conda

	##Activate a conda environment with gcc
	conda create -n cc_env gcc_linux-64 -y
	echo "!------Initiate Environment ---------!";
	conda init --all --dry-run --verbose	
	echo "!------Activate Environment ---------!";	

# Reset bash to enable changes...
# exec bash

	conda activate cc_env

	ls $CONDA_PREFIX/bin


	echo "!------Install CONDA packages ---------!";	

# #conda install -c anaconda postgresql ##REPLACED BY MANUAL / APT INSTALL BELOW
conda install -c anaconda psycopg2
# conda install -c anaconda flask 
# conda install -c auto apache2
conda install -c anaconda readline -y #required for postgres
conda install -c anaconda zlib -y #required for postgres
conda install -c conda-forge unzip -y
conda install pip -y
conda install numpy -y
conda install ipython -y
conda install matplotlib -y
conda install pandas -y
conda install tensorflow -y
conda install scipy -y
# conda install tensorflow-tensorboard -y 

conda install jupyter -y
conda install absl-py -y
conda install six -y
conda install protobuf -y
# conda install pyvis -y
# conda install sklearn -y

	echo "!------Install PIP packages ---------!";	

pip install jaal
pip install gekko 
pip install pyvis
pip install beautifulsoup4 
pip install keras 
# pip install matplotlib 
# pip install opencv-python 
# pip install torch 

else 
	exit # Will exit if conda failed
fi 

# echo "Install pyenv"
# touch ~/.bash_profile
# grep -q -F "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" ~/.bash_profile || echo "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" >> ~/.bash_profile
# source ~/.bash_profile
# grep -q -F "eval \"\$(pyenv init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv init -)\"" >> ~/.bash_profile
# grep -q -F "eval \"\$(pyenv virtualenv-init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.bash_profile
# curl -s -S -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
# source ~/.bash_profile


# echo "Install Python (Anaconda with Python 3)"
# pyenv install anaconda3-5.1.0
# echo "Activate Python"
# cd /home/vagrant/data
# pyenv local anaconda3-5.1.0


# # Update conda and python versions - including to get latest PIP
# conda update -n base conda -y
# conda update --all -y

echo "Setup login directory"
echo "cd /home/vagrant/data/"  >> /home/vagrant/.bash_profile
echo "source ~/.bashrc"  >> /home/vagrant/.bash_profile
