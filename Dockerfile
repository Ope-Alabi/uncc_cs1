# Use an official Python runtime as a parent image
FROM python:3.11.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install -q --disable-pip-version-check --root-user-action=ignore --no-cache-dir -r requirements.txt

# Install curl for testing purposes
ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NOWARNINGS=yes
RUN apt-get update && apt-get install -y curl

# Verify pretext installation
RUN pretext --version

# List the contents of the /app directory to ensure files are copied correctly
# RUN ls -al /app

# Set execution permissions for entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Check /app with entrypoint.sh
RUN ls -l /app | grep entrypoint.sh

# Expose the port the app runs on
EXPOSE 8128

# Use the entrypoint script to run the container
ENTRYPOINT ["/app/entrypoint.sh"]
