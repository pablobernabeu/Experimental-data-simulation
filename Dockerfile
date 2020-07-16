FROM docker.io/rocker/verse:3.6.2

RUN r -e 'install.packages("shiny")'
RUN r -e 'install.packages("flexdashboard")'
RUN r -e 'install.packages("knitr")'
RUN r -e 'install.packages("dplyr")'
RUN r -e 'install.packages("tidyr")'
RUN r -e 'install.packages("DT")'
RUN r -e 'install.packages("stringr")'
RUN r -e 'install.packages("purrr")'
RUN r -e 'install.packages("ngram")'
RUN r -e 'install.packages("htmltools")'

LABEL maintainer='Pablo Bernabeu <pcbernabeu@gmail.com>' \
  org.opencontainers.image.authors='Bernabeu and Sochat' \
  org.opencontainers.image.url='https://github.com/pablobernabeu/Experimental-data-simulation' \
  org.opencontainers.image.documentation='https://github.com/pablobernabeu/Experimental-data-simulation' \
  org.opencontainers.image.version='1.0.0'

# Usage instructions:
# $ docker build -t experiment-shiny-app .
# $ docker run --interactive --rm -e PASSWORD=<MYPASSWORD> -p 8787:8787 --name experiment-shiny-app --volume $(pwd):/home/rstudio experiment-shiny-app
