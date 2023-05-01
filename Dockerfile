# Base image
FROM python:3.9

# Set working directory

WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the project directory
COPY . .

# Collect static files (if needed)
RUN python manage.py collectstatic --noinput

# Set environment variables (if needed)
ENV PORT=8000

# Start the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:$PORT"]