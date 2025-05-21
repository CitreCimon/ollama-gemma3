# Ollama Docker: Llama 3.2 and Gemma 3 Setup

This repository provides a Docker-based setup to run two language models using Ollama:

- llama3.2:3b (Meta)
- gemma3:12b (Google)

Both models are downloaded and ready to use when the container is started.

## Contents

- Dockerfile: Installs both models during container startup
- README.md: Instructions for building, running, and testing
- Supports both GPU and CPU execution modes

## Build the Docker Image

Run the following command in the root directory to build the image:

    docker build -t ollama-multimodel .

## Run the Container with GPU Support

Make sure the NVIDIA Container Toolkit is installed. Then run:

    docker run -d --gpus all -p 11434:11434 --name ollama_gpu ollama-multimodel

## Run the Container with CPU Only

To use the CPU instead of the GPU, run:

    docker run -d -p 11434:11434 --name ollama_cpu ollama-multimodel

## Test the Models

You can test the models using curl with the Ollama HTTP API.

### Test Llama 3.2:3b

    curl http://localhost:11434/api/generate -d '{
      "model": "llama3.2:3b",
      "prompt": "What is Ollama?",
      "stream": false
    }'

### Test Gemma 3:12b

    curl http://localhost:11434/api/generate -d '{
      "model": "gemma3:12b",
      "prompt": "Explain the theory of relativity.",
      "stream": false
    }'

## Notes

- Make sure your GPU environment is properly configured when using GPU mode.
- CPU execution works but may be significantly slower, especially with larger models like gemma3:12b.
