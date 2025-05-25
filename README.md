# Ollama Docker: Gemma 3 Setup

This repository provides a Docker-based setup to run the following Model using Ollama:

- gemma3:12b (Google)

The model is downloaded and ready to use when the container is started.

## Contents

- Dockerfile: Installs gemma3 during container startup
- README.md: Instructions for building, running, and testing

## Build the Docker Image

Run the following command in the root directory to build the image:

    docker build -t ollama-gemma3 .

## Run the Container with 

    docker run -d -p 11434:11434 --name ollama_gemma3 ollama-gemma3

## Test the Model

You can test the model using curl with the Ollama HTTP API.

### Test Gemma 3:12b

    curl http://localhost:11434/api/generate -d '{
      "model": "gemma3:12b",
      "prompt": "Explain the theory of relativity.",
      "stream": false
    }'

## Notes

- Make sure your GPU environment is properly configured when using GPU mode.
- CPU execution works but may be significantly slower, especially with larger models like gemma3:12b.
