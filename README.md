[![<ORG_NAME>](https://circleci.com/gh/marciulionisudacity/udacity-ml-microservice-kubernetes.svg?style=svg)](<LINK>)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

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
