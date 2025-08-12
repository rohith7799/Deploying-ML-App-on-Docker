# This sets up the container with Python 3.10 installed

FROM python:3.10-slim

# This copies everything in your current directory to the /app directory in the container.
# It copies all files from your local computer into the /app folder inside the container.
# In your local computer, the COPY . /app command copies all files from the current directory 
# (where the Docker build command is run) into the /app folder inside the Docker container.
# inshort copy . /app will create a folder called "app" inside the docker and copies all (.) the files
# from local computer to docker

COPY . /app

# This sets the /app directory as the working directory for any RUN, CMD, ENTRYPOINT, or COPY instructions that follow.
# It tells Docker to work inside the /app folder from now on. 
# Think of it like entering a specific room 🏠 before you start working.

WORKDIR /app

# This runs pip install for all the packages listed in your requirements.txt file.
# It installs all required Python packages inside the Docker container, not on your local machine.

RUN pip install -r requirements.txt

# This tells Docker to listen on port 8000 at runtime. Port 8000 is the standard port for HTTP.
# this is container port (inside port)
EXPOSE 8000

# This command tells Streamlit to run your app.py script when the container starts.
# CMD ["uvicorn", "your_module_name:your_app_instance", "--host", "0.0.0.0", "--port", "your_port"]
# --host "0.0.0.0" = The host IP 0.0.0.0 means the app will be accessible from any network interface inside the container.
# --port "your_port" = Specifies the port where the FastAPI app will run inside the Docker container.

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

# docker run -p 8000:8000 rohithkumar124/diabetic_app
