FROM python:3.12 as build
RUN apt-get update -y && \
    apt-get install -y libcurl4-openssl-dev libxml2-dev libopenblas-dev tabix bcftools && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
COPY requirements-freeze.txt /
RUN pip3 install -r /requirements-freeze.txt

FROM python:3.12-slim
RUN apt-get update -y && \
    apt-get install -y libcurl4 libxml2 libopenblas0 tabix bcftools samtools && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
