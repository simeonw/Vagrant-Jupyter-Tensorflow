# Vagrant Jupyter Box

This is a simple Vagrant virtual machine. It contains a setup for running Jupyter notebook with Python 3. The setup includes the [Miniconda Python distribution](https://www.anaconda.com/distribution/) which means a lot of data science packages like [NumPy](http://www.numpy.org/), [pandas](https://pandas.pydata.org/), [matplotlib](https://matplotlib.org/), [Tensorflow](https://www.tensorflow.org/install) and many more are readily included in the setup. 

### Prerequisites

You need the following installed on your computer:
- [Virtualbox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Installation

- Copy `Vagrantfile` and the `scripts` folder to the directory you'd like to place your files.
- To set up the virtual machine, run the shell command `vagrant up` in this folder.
- Configuring the virtual machine should take about 10 minutes.
- Point a browser to [http://localhost:8888](http://localhost:8888)

### Features

- Python 3.9.5 (default, but also 2x) installed through miniconda and pyenv
- psycopg2, pip, readline, zlib (required for postgres), forge,  
- numpy, ipython, matplotlib, pandas, tensorflow / tensorboard, scipy, pyvis, sklearn,
- jaal, gekko, beautifulsoup4, keras, absl-py, six, protobuf,  opencv-python, torch
- jupyter notebooks with some packages pre-imported: os, sys, csv, pandas, tweepy, numpy, random, re, glob, tika, parser

### Configuration

- **Optional:** You can log into the virtual machine by calling `vagrant ssh` - in order to install other python packages etc. The default Jupyter notebooks also come with various libraries pre-configured enabling the install of pip packages directly.
- List installed boxes with`vagrant global-status`
- Provision with `vagrant up --provision`
- Delete boxes with`vagrant destroy boxid`.

**That's it.** 


