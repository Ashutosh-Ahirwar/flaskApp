Azure web app deployement confirmation

![alt text](op.png?raw=true)
# Flask Application Deployment Guide

Prerequisites for testing locally : Python installed

### Setup for Local testing 

create folder "flaskApp"

```sh
cd flaskApp
```
Create `requirements.txt` file and List the necessary dependencies for application.

Install Python packages from requirements

```sh
pip install -r requirements.txt
```
Create a file named `app.py` to define the Flask application object and set up routes.

Start web application with Gunicorn
```sh
gunicorn --bind 0.0.0.0:8000 app:app
```
Test if the app is working fine or not on - http://localhost:8000
Now after successful testing 
create a file startup.sh which will contain script to automatically deploy app on azure web app

Upload project to git hub

## Deploying project on azure with github actions ci/cd

- Go to azure portal

- Create resource

- Select web app

- Fill basic details
   -Select python in runtime stack

- In Deployment section enable basic authentication, then review and create

- Now after creation - go to Azure App Services, click on the created service and go to overview and download publish profile

- Go to GitHub project repository, click on Settings > Secrets > Actions > New repository secret.

- Give name to secret which will be required in ci/cd workflow YAML file and paste the content of publish profile in value and add secret

- Now In GitHub project repository, create a directory with structure ".github/workflows/" and add YAML file containing automation process inside it

- On pushing the YAML file, github action will trigger CI/CD 

