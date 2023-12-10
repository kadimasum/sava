# SAVA

This repository contains a series of tasks aimed at showcasing skills in Software, DevOps and Cloud Engineering. Each task focuses on a specific aspect of the development and deployment lifecycle. The repository showcases proficiency in key areas such as version control, containerization, cloud infrastructure, storage, infrastructure as code (IaC), continuous integration/continuous deployment (CI/CD), Bash, Kubernetes, Terraform, and site reliability engineering (SRE).


## Prerequisites

In order to follow along you need to setup/install the following.

- Docker
- Virtualbox
- Vagrant
- Git & GitHub
- Ansible
- Vagrant
- Kubernetes
- GCP
- Python3
- Pip
- PostgreSQL



## Django application

Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.

## Run the website on your local computer

Follow the following steps to run the website locally on your computer:

1. Clone the code into your computer

```
git clone git@github.com:kadimasum/sava.git
```

2. Navigate to the folder you have just cloned
3. Create a virtual environment

```
python -m venv .venv
```

4. Activate the virtual environment

```
source .venv/bin/activate
```

5. Install depenndancies

```
pip install -r requirements.txt
```

6. Run application

```
python3 manage.py runserver
```

## Run tests locally

For this application, I have used pytest to write tests. The tests are located in the `tests` directory. In order to run the tests locally use the following command

```
pytest
```
There is one test in the `test_views.py` file that asserts the existence of the template file. It should pass successfully


## Run the application with a docker container

Run the following shell script to run your docker container

```
./scripts/run_docker.sh
```

## Run the application in Kubernetes

Create a cluster on Google Cloud Kubernetes Engine, Amazon EKS Azure Kubernetes Service, Your Local server or use minikube on your personal PC

Once you have created the cluster, you can create a deployment together with its service by running the following command

```
kubectl apply -f kubernetes/deployment.yaml
```

Run the following command to verify that the pods were successfully deployed in the cluster

```
kubectl get pods
```

Run the following command to verivy that the service was deployed

```
kubectl get svc
```

Use the external IP of the service and port 30000 to view the website

## Continous Integration

For this application, I have used Github Actions to create a CI pipeline. To view the YAML configuration navigate to the following directory

```
.github/workflows
```
The file is named `ci.yaml`
