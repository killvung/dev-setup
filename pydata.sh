#!/usr/bin/env bash

# ~/pydata.sh

# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up pip."

# Install python and pip
brew install python3

# Install Anaconda
brew install --cask --appdir="/Applications" anaconda
/usr/local/anaconda3/bin/conda init bash

echo "Reapply configuration for conda"
source ~/.bash_profile

###############################################################################
# Anaconda Virtual Enviroment (base)
###############################################################################
conda activate base
conda install -y pip
conda install -y numpy
conda install -y scipy
conda install -y matplotlib
conda install -y pandas
conda install -y sympy
conda install -y nose
conda install -y unittest2
conda install -y seaborn
conda install -y scikit-learn
conda install -y "ipython[all]"
conda install -y bokeh
conda install -y Flask
conda install -y Django
conda install -y sqlalchemy
conda install -y mysql-python
conda install -y -c conda-forge fastapi

###############################################################################
# Anaconda Virtual Enviroment (Machine Learning)
###############################################################################
conda create -n ml -y tensorflow
conda activate ml
conda install -y pip
conda install -y pytorch
conda install -y numpy
conda install -y scipy
conda install -y matplotlib
conda install -y pandas
conda install -y sympy
conda install -y nose
conda install -y unittest2
conda install -y seaborn
conda install -y scikit-learn
conda install -y "ipython[all]"
conda install -y bokeh
conda install -y Flask
conda install -y Django
conda install -y sqlalchemy
conda install -y mysql-python
conda install -y -c conda-forge fastapi

###############################################################################
# Install IPython Profile
###############################################################################
echo "------------------------------"
echo "Installing IPython Notebook Default Profile"

# Add the IPython profile
mkdir -p ~/.ipython
cp -r init/profile_default/ ~/.ipython/profile_default

echo "------------------------------"
echo "Script completed."
