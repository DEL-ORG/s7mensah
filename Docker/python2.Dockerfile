# Use Ubuntu as the base image
FROM ubuntu

# Set the working directory to /app
WORKDIR /app

# Update package lists and install Python 3 and pip3
RUN apt-get update && apt-get install -y python3 python3-pip

# Copy the application code from the provided URL
COPY ./ /app

# Set the entrypoint and cmd
ENTRYPOINT ["python3"]
CMD ["devOps/manage.py", "runserver", "0.0.0.0:8000"]
