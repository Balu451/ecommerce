# Use an official lightweight Python image as the base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install the dependencies directly
RUN pip install --no-cache-dir Django==3.0.5 \
    django-widget-tweaks==1.4.8 \
    sqlparse==0.3.1 \
    xhtml2pdf==0.2.8 \
    reportlab==3.6.12

# Copy the entire project into the container
COPY . .

# List files for debugging purposes (optional, can remove if not needed)
RUN ls -al /app

# Expose the port the application runs on
EXPOSE 8000 

# Define the command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
