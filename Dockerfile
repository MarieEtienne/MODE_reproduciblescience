FROM rocker/geospatial:4.3.2
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
 && apt-get install -y pandoc \
    pandoc-citeproc \
 && apt install -y imagemagick 
RUN R -e "install.packages(c('tidyverse','wesanderson','lubridate','rmarkdown', 'stringr','tinytex','RefManageR'))"
RUN R -e "install.packages(c('car', 'emmeans'))"
RUN R -e "install.packages(c('bibtex'))"
RUN R -e "install.packages('FactoMineR')"
RUN R -e "remotes::install_github('yihui/xaringan')"
RUN R -e "remotes::install_github('gadenbuie/xaringanExtra')"
RUN R -e "remotes::install_github('EvaMaeRey/flipbookr')"
RUN R -e "install.packages(c('palmerpenguins'))"
RUN R -e "install.packages(c('cowplot'))"
RUN R -e "install.packages(c('ggpubr'))"
RUN R -e "install.packages('GGally')"
RUN R -e "install.packages('gganimate')"
RUN R -e "install.packages('plotly')"
RUN R -e "install.packages('magick')"
RUN R -e "install.packages('ggfortify')"
RUN R -e "install.packages('animation')"
RUN R -e "install.packages('kableExtra')"
RUN R -e "remotes::install_github('MarieEtienne/coursesdata', force = TRUE)"
RUN R -e "install.packages(c('fexdashboard'))"
RUN apt install -y jags
RUN R -e "install.packages(c('rjags'))"
RUN R -e "install.packages(c('nlme', 'predictmeans', 'ade4', 'vegan', 'corrplot','plot3D', 'DHARMAa', 'lattice'))"
RUN R -e "install.packages(c('RVAideMemoire', 'PerformanceAnalytics', 'rcompanion'))"
RUN apt-get install -y --no-install-recommends unzip python3-pip dvipng pandoc wget git make python3-venv && \
    pip3 install jupyter jupyter-cache flatlatex matplotlib && \
    apt-get --purge -y remove texlive.\*-doc$ && \
    apt-get clean

RUN pip3 install numpy matplotlib pandas scikit-learn 
