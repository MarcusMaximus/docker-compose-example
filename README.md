# docker-compose-example
Example of single-machine n-tiered application using Docker Compose

## Tech Task

We would like you to demonstrate the automation of the spin-up and installation of a single-machine n-tier architecture. It is up to your interpretation which layers you would like to introduce, provided they can all be automatically started from a single command and serve some basic data. We require you to make a selection of technical choices you're most comfortable with, whether it be Linux vs. Windows or Java vs. Ruby. Choose the platforms, frameworks and languages you're most familiar with. 

### Requirements

High-level: Using automation we want to spin up an environment which will allow us to connect to a web server on port 80 or 8080 and serve a bit of simple HTML content from a data storage source. You will be required to write a small application in the language/framework of your choice to connect to the database, query it, and return the result to the user. 

### Criteria

- Developed within a git repository with frequent commits.
- Automated way to spin up/down single machine environment (vagrant, docker compose, minikube etc)
- OS installation/configuration (Windows or Linux, any versions)
- Configuration management (Chef/Puppet/Ansible, Dockerfile or kube deployment files) to install and configure applications.
- Installation of a web tier and data tier (your choice, e.g. NGINX/Apache/IIS, MySQL/PostgreSQL/Redis/etc)- Running a simple web application to query and return data. 

## Test Locally

```bash
docker-compose up
```

### Test Flask app locally

Will fail if DB not running.

```bash
cd sample-app
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
export FLASK_APP=app.py
flask run --host=0.0.0.0
```
