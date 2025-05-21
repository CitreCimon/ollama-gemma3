FROM ollama/ollama:latest

CMD bash -c "ollama serve & sleep 5 && ollama pull llama3.2:3b && ollama pull gemma3:12b && wait"
