# Ollama Docker: Llama 3.2 and Gemma 3 Setup

This repository provides a Docker-based setup to run two language models using Ollama:

- gemma3:12b (Google)

Both models are downloaded and ready to use when the container is started.

## Contents

- Dockerfile: Installs both models during container startup
- README.md: Instructions for building, running, and testing
- Supports both GPU and CPU execution modes

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
