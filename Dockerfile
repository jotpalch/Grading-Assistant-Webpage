# Use an official Python runtime as a base image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 3000 available for the app
EXPOSE 3000

# Run app.py when the container launches
CMD ["python", "main.py"]