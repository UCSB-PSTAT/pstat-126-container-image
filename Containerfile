FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN pip install otter-grader \
    rpy2

RUN R -e "install.packages(c('tidyverse', 'tidymodels', 'simex', 'faraway', 'nlme', 'quantreg', 'MASS', 'splines', 'mgcv', 'leaps', 'pls', 'lars', 'Amelia', 'glmnet', 'quarto'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

USER $NB_USER

