#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status
set -x # Exit immediately if a pipeline exits with a non-zero status

# Create environment
conda update -n base conda -y
conda env create --name keras --force 

# Start environment
source activate keras

# Setup spell checking and other notebook enhancements
git clone https://github.com/Calysto/notebook-extensions.git
cd notebook-extensions
jupyter nbextension install calysto --user
jupyter nbextension enable calysto/spell-check/main
jupyter nbextension enable calysto/cell-tools/main
jupyter nbextension enable calysto/annotate/main

# Setup RISE (https://github.com/damianavila/RISE) slideshows 
jupyter nbextension install rise --py --sys-prefix
jupyter nbextension enable rise --py --sys-prefix

