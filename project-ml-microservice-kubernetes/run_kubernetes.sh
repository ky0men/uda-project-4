#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerPath=dienpp/prj4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy kube-prj4 --image="$docker_path"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/kube-prj4 8000:80
