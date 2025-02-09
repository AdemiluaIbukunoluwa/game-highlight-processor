# GAME HIGHLIGHT PROCESSOR


## STEP 1: Create the Dockerfile
Create a file called Dockerfile and copy the code in [a relative link](./Dockerfile)
This code creates a docker image that will be used to run the game highlight processor. 
- It uses a lightweight version of python as the base image.
- Then it sets the working directory to /app.
- Then it copies the requirements.txt file(which stores dependencies) to the container then runs the file to install the dependencies.
- Then copies all python scripts to the container('.' means the current directory).
- It installs the AWS CLI inside the container to allow interactions with services like media convert.
- Runs the run_all.py when the container runs. This file automates the running of the other scripts.