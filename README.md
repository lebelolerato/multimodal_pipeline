# Multimodal Pipeline (Docker)

## Build image
cd multimodal_pipeline
docker build -t multimodal-pipeline -f docker/Dockerfile .

## Run container (interactive)
docker run --gpus all -it --rm \
  -v $(pwd)/src:/app/src \
  -v $(pwd)/data:/app/data \
  -v $(pwd)/logs:/app/logs \
  multimodal-pipeline bash

# OR with docker-compose
docker-compose up --build
