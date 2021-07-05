#!/bin/zsh
<<'COMMENT'
docker run \
  -v ${PWD}/workspace/assignments:/workspace/assignments \
  -v ${PWD}/workspace/data:/workspace/data \
  -p 49001:9001 \
  -p 45901:5900 \
  -p 46006:6006 \
  --name point_cloud_analytics_workspace_cpu shenlanxueyuan/point-cloud-processing:ubuntu-bionic-gpu
COMMENT
# launch with docker-compose dafault:docker-compose.yml
# -d means print no log, run in the background
docker-compose up -d



