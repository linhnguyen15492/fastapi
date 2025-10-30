# syntax=docker/dockerfile:1
FROM python:3.13-alpine

WORKDIR /app

ENV FASTAPI_APP=app.py

ENV FASTAPI_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

COPY ./app ./app


CMD ["uvicorn", "app.main:app", "--reload"]