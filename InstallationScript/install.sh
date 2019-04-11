

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

nano /etc/apt/sources.list

# add bionic R3.5
deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/


sudo apt update
sudo apt install r-base r-base-dev
sudo apt install build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev gdebi git


sudo su - -c "R -e \"install.packages('Rcpp',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('htmltools',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('rlang',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('backports',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('pkgload',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('ps',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('fs',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('glue',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('processx',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('promises',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('httpuv',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('mime',repos='http://cran.rstudio.com/')\""


sudo su - -c "R -e \"install.packages('devtools',repos='http://cran.rstudio.com/')\""
#sudo su - -c "R -e \"install.packages('shiny',repos='http://cran.rstudio.com/')\""
#sudo su - -c "R -e \"devtools::install_github('rstudio/shiny',force=TRUE)\""
sudo su - -c "R -e \"devtools::install_version('shiny',version = '1.2.0', repos = 'http://cran.rstudio.com/')\""

sudo su - -c "R -e \"install.packages('rmarkdown',repos='http://cran.rstudio.com/')\""
sudo su - -c "R -e \"devtools::install_github('daattali/shinyjs',force=TRUE)\""
sudo su - -c "R -e \"devtools::install_github('pvermees/IsoplotR',force=TRUE)\""
sudo su - -c "R -e \"devtools::install_github('pvermees/IsoplotRgui',force=TRUE)\""





