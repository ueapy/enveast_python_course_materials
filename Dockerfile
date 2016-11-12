FROM andrewosh/binder-base

MAINTAINER Denis Sergeev <d.sergeev@uea.ac.uk>

USER main

# Update conda
RUN conda update conda --yes
ADD environment.yml environment.yml
RUN conda-env create environment.yml

RUN /bin/bash -c "source activate course2016 && ipython kernel install --user"
# Following https://github.com/Unidata/unidata-python-workshop/issues/114
