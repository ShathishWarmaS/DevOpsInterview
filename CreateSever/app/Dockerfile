# Use the official Python base image
FROM python:3.9
# Set the working directory inside the container
WORKDIR /app

# Copy the Python script to the working directory
COPY createserver /app

# Install any required dependencies
RUN pip install --no-cache-dir pytz

# Set the command to run when the container starts
CMD ["python", "server.py"]
