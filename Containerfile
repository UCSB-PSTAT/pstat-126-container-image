FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN pip install otter-grader \
    rpy2

RUN mamba install -y r-tidyverse r-tidymodel r-simex r-faraway r-nlme r-quantreg r-mass r-splines r-mgcv r-leaps r-pls r-lars r-amelia r-glmnet r-quarto r-alr4

USER $NB_USER

