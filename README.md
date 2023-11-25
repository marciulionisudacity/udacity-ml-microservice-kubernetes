[![<ORG_NAME>](https://circleci.com/gh/marciulionisudacity/udacity-ml-microservice-kubernetes.svg?style=svg)](<LINK>)


## Project Overview

This is a `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). `app.py`—that serves out predictions (inference) about housing prices through API calls.

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Setup and Configure the docker locally: 

* Install Docker: First, you need to install Docker on your local machine. Docker provides installation packages for various operating systems such as Windows, macOS, and Linux. Visit the official Docker website (https://www.docker.com/) and download the appropriate version for your operating system.

* Verify Docker Installation: After the installation, open a terminal or command prompt and run the following command to verify that Docker is installed correctly:
`docker --version`
This command should display the version of Docker installed on your machine.

* Start Docker: Start the Docker service on your machine. The process for starting Docker varies depending on your operating system. On Windows, you can find the Docker Desktop application in your start menu and launch it. On macOS, you can find the Docker application in your Applications folder and open it. On Linux, you can start the Docker service using the command:
`sudo service docker start`

* To build docker container for application locally just open project folder in terminal and just run this command:  `./run_docker.sh`

### Setup and Configure the docker locally: 
To set up Kubernetes locally, you have a few options. Let's go through them:

* Docker Desktop: The simplest way to install Kubernetes locally is to use Docker Desktop for Windows or Docker Desktop for Mac. These tools come with Kubernetes support built-in. You can download and install Docker Desktop from the official Docker website. Once installed, you can enable Kubernetes in the Docker Desktop settings, and it will set up a local Kubernetes cluster for you.

* Minikube: Minikube is a tool that allows you to run a single-node Kubernetes cluster on your local machine. It is a lightweight and easy-to-use option for local development and testing. To install Minikube, you can follow the instructions provided in the official Kubernetes documentation. Once installed, you can start Minikube, and it will set up a local Kubernetes cluster for you to use.

* To run app in kubernetes locally just: 
Upload built container running `upload_docker.sh` script from the project folder.
Start Minikube: `minikube start`.
Run application in kubernetes pod ust open project folder in terminal and just run this command:  `run_kubernetes.sh`.




### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload to Docker: `./upload_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### File explanation: 
`.circleci/config.yml` contains script file for running CI/CD pipeline in CircleCI. In our case this pipeline lints our Docker and app.py files. 

`output_txt_files/docker_out.txt` and `output_txt_files/kubernetes_out.txt` files contains contents of terminal outputs when application is runned in docker container and deployed in kubernetes pod. 

`Dockerfile` contains instructions how to build docker container for our application. 

`requirements.txt` contains information what requirements are needed for the python app. 
