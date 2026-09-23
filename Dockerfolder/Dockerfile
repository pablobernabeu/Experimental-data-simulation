# R 4.6.0 with RStudio Server. In this versioned rocker image, the CRAN mirror is
# frozen at the Posit Package Manager snapshot of 23 June 2026, so rebuilding the
# image later installs the same package versions. The digest fixes the image itself
# (tag 4.6.0 as published on 24 June 2026).
FROM docker.io/rocker/verse:4.6.0@sha256:0b50fdee9288723b5a6802502341f0429ab05edb9db04d57958f49e18d3ea883

# Install the app's packages at pinned versions (see install_packages.R)
COPY install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R && rm /tmp/install_packages.R

LABEL maintainer='Pablo Bernabeu <pcbernabeu@gmail.com>' \
  org.opencontainers.image.authors='Bernabeu and Sochat' \
  org.opencontainers.image.url='https://github.com/pablobernabeu/Experimental-data-simulation' \
  org.opencontainers.image.documentation='https://github.com/pablobernabeu/Experimental-data-simulation' \
  org.opencontainers.image.version='1.1.0'

# Usage, from the root folder of the repository:
# $ docker build -t experiment-shiny-app Dockerfolder
# $ docker run --interactive --rm -e PASSWORD=<MYPASSWORD> -p 8787:8787 --name experiment-shiny-app --volume "$(pwd)":/home/rstudio experiment-shiny-app
