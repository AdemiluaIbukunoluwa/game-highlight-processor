FROM python:3.9-slim

# the working directory in the container
WORKDIR /app

# copy the requirements file into the container and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy all the scripts into the container
COPY scripts/*.py . 

# AWS CLI for S3 and MediaConvert management(optional)
RUN apt-get update && apt-get install -y awscli 

# default command to run when starting the container
CMD ["python", "run_all.py"]
