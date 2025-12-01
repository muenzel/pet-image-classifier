#!/bin/sh

# Runs all three models to test which provides 'best' solution.
#
# Usage: sh run_models_batch.sh
#
python check_images.py --dir pet_images/ --arch resnet  --dogfile data/dognames.txt > resnet_pet-images.txt
python check_images.py --dir pet_images/ --arch alexnet --dogfile data/dognames.txt > alexnet_pet-images.txt
python check_images.py --dir pet_images/ --arch vgg  --dogfile data/dognames.txt > vgg_pet-images.txt
