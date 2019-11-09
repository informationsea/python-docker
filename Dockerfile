FROM python:3.7
RUN apt-get update -y && \
    apt-get install -y libcurl4-openssl-dev libxml2-dev libopenblas-dev && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install virtualenv vcfpy cython numpy scipy matplotlib networkx \
    cyvcf2 jinja2 pyfaidx pygments pyliftover pysam pyyaml rtree yapf ipython \
    biopython jsonschema pyfaidx pyfasta flask openpyxl pyexcel requests csvkit \
    notebook pandas pyinstaller plotly seaborn nose lxml scikit-learn ipywidgets
