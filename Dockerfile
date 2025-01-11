# Use the official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code to the working directory
COPY . .

# Install dependencies
RUN pip install --no-cache-dir django

# Expose the Django development server port
EXPOSE 8000

# Command to run the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
