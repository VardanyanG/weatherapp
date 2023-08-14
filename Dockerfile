# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and any other dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the port that the Flask app will run on (must match the app's port)
EXPOSE 8080

# Command to run the Flask application when the container starts
CMD ["python", "weather.py"]
