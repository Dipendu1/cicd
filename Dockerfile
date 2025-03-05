# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any dependencies from requirements.txt if it exists
RUN pip install flask

# Make port 5000 available to the outside
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
