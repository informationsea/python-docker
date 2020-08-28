FROM python:3.8.5
RUN apt-get update -y && \
    apt-get install -y libcurl4-openssl-dev libxml2-dev libopenblas-dev tabix bcftools && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
COPY requirements-freeze.txt /
RUN pip3 install -r /requirements-freeze.txt