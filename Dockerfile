FROM python:3.8.0-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk update
RUN apk add postgresql-dev gcc python3-dev musl-dev zlib-dev jpeg-dev
RUN apk add --no-cache python3-dev libffi-dev gcc && pip3 install --upgrade pip 
COPY . /usr/src/app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

