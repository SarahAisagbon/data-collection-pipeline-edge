# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.12.1

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Expose port 5000 for the Flask app (if applicable)
EXPOSE 5000

# Update the system and install necessary packages
RUN apt-get update && \
    apt-get install -y wget curl gnupg libssl-dev

# Download and install Microsoft Edge (Chromium)
RUN apt-get install -y chromium

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Set the PATH to include the directory with the EdgeDriver executable
ENV PATH="/app:${PATH}"
ENV PATH="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe:${PATH}"

# During debugging, this entry point will be overridden.
CMD ["python", "Project/Webscraping.py"]
