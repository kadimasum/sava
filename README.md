# Sava

This repository contains a series of tasks aimed at showcasing skills in Software, DevOps and Cloud Engineering. Each task focuses on a specific aspect of the development and deployment lifecycle. The repository showcases proficiency in key areas such as version control, containerization, cloud infrastructure, storage, infrastructure as code (IaC), continuous integration/continuous deployment (CI/CD), and site reliability engineering (SRE).

## Prerequisites

In order to follow along you need to setup/install the following

- Docker
- Virtualbox
- Vagrant
- Git & GitHub
- Ansible
- Vagrant
- GCP
- Python
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

2. Create a virtual environment

```
python -m venv .venv
```

3. Activate the virtual environment

```
source .venv/bin/activate
```

4. Install depenndancies

```
pip install -r requirements.txt
```

5. Run application

```
python3 manage.py runserver
```

## Run the application with a docker container

Run the following shell script to run your docker container

```
./scripts/run_docker.sh
```

