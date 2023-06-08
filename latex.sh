#!/bin/bash

# Build an Ubuntu image with LaTex tools installed.
docker build . -t latex:latest

# Create a container from which we can call pdflatex to build the latest PDF
# version of our resume.
docker run \
    --rm \
    -it \
    --privileged \
    -v $(pwd):/mnt/resume \
    latex:latest
