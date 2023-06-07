# Use the official Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python code to the working directory
COPY . /app


# Expose the port used by the server
EXPOSE 8000

# Set the command to run when the container starts
CMD ["python", "server.py"]
