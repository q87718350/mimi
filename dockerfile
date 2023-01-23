# syntax=docker/dockerfile:1
FROM python:3.6
ENV PYTHONUNBUFFERED=1
WORKDIR /code
RUN mkdir staticfiles
COPY requirements.txt /code/
RUN pip3 install -r requirements.txt
COPY . /code/
RUN pip3 install django-simple-history
