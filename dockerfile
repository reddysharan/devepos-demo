## project struthure
my-flask-app/
├── app.py
├── requirements.txt
└── Dockerfile

## app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Docker World!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
##docker file 
# Use the official Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the default command to run the app
CMD ["python", "app.py"]
