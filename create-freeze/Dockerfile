FROM python:3.9.9
RUN apt-get update -y && \
    apt-get install -y libcurl4-openssl-dev libxml2-dev libopenblas-dev && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install biopython scipy cython pandas pyfaidx pysam vcfpy flask jinja2\
    pyliftover pygments openpyxl pyexcel requests csvkit nose toml mypy flake8 \
    intervaltree pylint cwltool matplotlib virtualenv cyvcf2 pyyaml jsonschema \
    seaborn psycopg2 jupyterlab simplevcf yapf
RUN pip3 freeze > /requirements-freeze.txt
