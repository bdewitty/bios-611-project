FROM rocker/verse 
RUN R -e "install.packages(\"matlab\")"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('plyr')"
RUN Rscript -e "install.packages('reshape2')"
RUN Rscript --no-restore --no-save -e "remotes::install_github('eddelbuettel/rcppcorels')"
RUN Rscript --no-restore --no-save -e "tinytex::tlmgr_install(c(\"wrapfig\",\"ec\",\"ulem\",\"amsmath\",\"capt-of\"))"
RUN Rscript --no-restore --no-save -e "tinytex::tlmgr_install(c(\"hyperref\",\"iftex\",\"pdftexcmds\",\"infwarerr\"))"
RUN Rscript --no-restore --no-save -e "tinytex::tlmgr_install(c(\"kvoptions\",\"epstopdf\",\"epstopdf-pkg\"))"
RUN Rscript --no-restore --no-save -e "tinytex::tlmgr_install(c(\"hanging\",\"grfext\"))"
RUN Rscript --no-restore --no-save -e "tinytex::tlmgr_install(c(\"etoolbox\",\"xcolor\",\"geometry\"))"
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip
RUN pip3 install tensorflow