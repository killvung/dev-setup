#!/usr/bin/env bash

# ~/pydata.sh

# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up pip."

# Install pip
easy_install pip

# Install Anaconda because it's lit!
brew cask install --appdir="~/Applications" anaconda

###############################################################################
# Anaconda Virtual Enviroment (base)
###############################################################################
conda activate base
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

###############################################################################
# Anaconda Virtual Enviroment (tf)
###############################################################################
conda create -n tf -y tensorflow
conda activate tf
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
