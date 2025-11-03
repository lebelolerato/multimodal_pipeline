# Base image with CUDA support if you want GPU (change to cpu-only if not)
# Use pytorch official image that matches your CUDA version if you need GPU
FROM python:3.10-slim

# Set a non-root user for safety (optional)
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git curl wget ffmpeg libsm6 libxext6 && \
    rm -rf /var/lib/apt/lists/*

# Create app dir
WORKDIR /app

# Copy requirements and install
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip && pip install -r /app/requirements.txt

# Copy entrypoint script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Copy source (optional, better to mount during development)
COPY src/ /app/src/

# Default entrypoint — opens a bash unless overridden
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["bash"]
