#!/bin/bash

set -euo pipefail

cd /home/azureuser/template_project_sda

echo "Pulling latest Docker images..."

docker compose pull

echo "Restarting application..."

docker compose up -d --remove-orphans

echo "Cleaning unused Docker images..."

docker image prune -f

echo "DEPLOY_OK"