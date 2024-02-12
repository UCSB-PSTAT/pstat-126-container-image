FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN pip install otter-grader \
    rpy2

RUN mamba install -y r-tidyverse r-faraway r-nlme r-quantreg r-mass r-mgcv r-leaps r-pls r-lars r-amelia r-glmnet r-quarto

RUN R -e "install.packages(c('alr4', 'simex', 'splines', 'tidymodels'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

USER $NB_USER

