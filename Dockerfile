
FROM python:3.7-alpine
MAINTAINER Amit Kumar


# To Stop Docker from buffering PYTHON OutPut
ENV PYTHONUNBUFFRED 1


# Install Dependencies
COPY ./requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user