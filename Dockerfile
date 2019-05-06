# <WARNING>
# Everything within sections like <TAG> is generated and can
# be automatically replaced on deployment. You can disable
# this functionality by simply removing the wrapping tags.
# </WARNING>

FROM python:3.7

# <DOCKER_FROM>
WORKDIR /app
# </DOCKER_FROM>

# <NPM>
# </NPM>

# set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# <BOWER>
# </BOWER>

# <PYTHON>
COPY requirements.* /app/
RUN pip install -r requirements.txt
# RUN pip install \
#        --no-index --no-deps \
#        --requirement requirements.txt
# </PYTHON>

# <SOURCE>
COPY . /app
# </SOURCE>

# <GULP>
# </GULP>

# RUN python manage.py flush --no-input
# RUN python manage.py migrate

# <STATIC>
RUN DJANGO_MODE=build python manage.py collectstatic --noinput
# </STATIC>

# EXPOSE 80
# CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]


# https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/
