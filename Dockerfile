FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt version.py ./

RUN pip install -U pip
RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/conduit"

COPY . ./

EXPOSE 8080
