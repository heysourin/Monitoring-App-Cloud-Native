# Use the official Python base image
FROM python:3.9-slim-buster 

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application files to the container
COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the entrypoint command to start the Flask app
CMD ["flask", "run"]
