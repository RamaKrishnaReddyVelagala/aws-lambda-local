# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY src /app/src
COPY run.py /app
COPY requirements.txt /app

# Install requirements
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


# Define environment variable
ENV PYTHONPATH="/app"

# Expose port 8080
EXPOSE 8080

# Run a server to handle incoming requests on port 8080
CMD ["python", "run.py"]
