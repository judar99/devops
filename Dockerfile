# Base image
FROM python:3.9-alpine

# Set working directory
WORKDIR /app

# Install virtualenv
RUN pip install virtualenv

# Create a virtualenv and activate it
RUN virtualenv venv
RUN . venv/bin/activate

# Copy the requirements file
COPY requirements.txt .


# Install dependencies
RUN pip install -r requirements.txt

# Copy the project directory
COPY . .

COPY run.sh /run.sh

# Set environment variables (if needed)
ENV PORT=8081
EXPOSE ${PORT}

EXPOSE ${PORT}/tcp

RUN python manage.py migrate

# Start the server
CMD ["/run.sh", "python", "manage.py", "runserver", "0.0.0.0:8081"]

