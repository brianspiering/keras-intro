#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status
set -x # Exit immediately if a pipeline exits with a non-zero status

# Create environment
conda update -n base conda -y
conda env create --name keras --force 

# Start environment
source activate keras

# Setup RISE (https://github.com/damianavila/RISE) slideshows 
jupyter nbextension install rise --py --sys-prefix
jupyter nbextension enable rise --py --sys-prefix

