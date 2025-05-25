FROM ollama/ollama

RUN ollama serve & sleep 5 &&  ollama pull gemma3:12b

# Set entrypoint and cmd for runtime
ENTRYPOINT ["ollama"]
CMD ["serve"]
# Default command when container runs