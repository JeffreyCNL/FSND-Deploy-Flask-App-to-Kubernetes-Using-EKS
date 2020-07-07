#pull official base image
FROM python:stretch
LABEL maintainer='Jeffrey'
LABEL date='2020-7-4'
LABEL description='Image to build the back-end service (Flask) of the Udacity FSND project'

# set working directory
COPY . /app
WORKDIR /app

# install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]