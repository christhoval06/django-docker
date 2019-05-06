# django-docker
Is a [Django](https://www.djangoproject.com) implementation over [Docker](https://www.docker.com) container.

Files
------------
* docker-compose.yml
* Dockerfile
* requirements.in
* requirements.txt


Steps
------------

    1. git clone [repo url]
    2. cd [clone dir]
    3. docker-compose build 
    4. docker-compose run --rm web django-admin startproject [project name] .
    5. docker-compose run --rm web python manage.py startapp [module or app name]
    


