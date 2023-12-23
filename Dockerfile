# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY src/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY src/app.py .

# Expose port 5000 for the Flask app to run on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
