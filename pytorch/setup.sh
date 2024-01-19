#!/bin/bash
NAME_NGC=${1:-"pytorch:22.10-py3"}

echo "---------------------------------------------------"
echo "Pull Docker Image: "
echo "---------------------------------------------------"
docker pull nvcr.io/nvidia/${NAME_NGC}


echo "---------------------------------------------------"
echo "Clone Repos: "
echo "---------------------------------------------------"
git clone https://mirror.ghproxy.com/https://github.com/LambdaLabsML/DeepLearningExamples.git && \
cd DeepLearningExamples && \
git checkout lambda/benchmark && \
cd ..
git clone https://mirror.ghproxy.com/https://github.com/lambdal/deeplearning-benchmark.git
