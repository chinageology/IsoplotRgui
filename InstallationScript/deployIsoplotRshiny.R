setwd('/home/fred/')

system('cp IsoplotR/inst/constants.json IsoplotRgui/inst/shiny-examples/myapp/www/js')
system('rm -rf IsoplotRshiny/R/*')
system('rsync -av IsoplotR/R/* IsoplotRshiny/R/')
system('rsync -av IsoplotRgui/R/* IsoplotRshiny/R/')
system('rsync -av IsoplotRgui/inst/shiny-examples/myapp/* IsoplotRshiny/R/')
system('cp IsoplotR/inst/constants.json IsoplotRshiny/R/')
system('rm IsoplotRshiny/R/IsoplotR.R')
system("sed -i 's/IsoplotR:://g' IsoplotRshiny/R/www/js/js2R.js")
system("sed -i 's/IsoplotR:://g' IsoplotRshiny/R/server.R")
system("cat IsoplotRshiny/sources.R IsoplotRshiny/R/server.R > temp;
        mv temp IsoplotRshiny/R/server.R")

system('scp -r IsoplotRshiny pvermees@128.40.78.161:/srv/shiny-server')
