cp IsoplotR/inst/constants.json IsoplotRgui/inst/shiny-examples/myapp/www/js
rm -rf IsoplotRshiny/R/*
rsync -av IsoplotR/R/* IsoplotRshiny/R/
rsync -av IsoplotRgui/R/* IsoplotRshiny/R/
rsync -av IsoplotRgui/inst/shiny-examples/myapp/* IsoplotRshiny/R/
cp IsoplotR/inst/constants.json IsoplotRshiny/R/
rm IsoplotRshiny/R/IsoplotR.R
sed -i 's/IsoplotR:://g' IsoplotRshiny/R/www/js/js2R.js
sed -i 's/IsoplotR:://g' IsoplotRshiny/R/server.R
cat IsoplotRshiny/sources.R IsoplotRshiny/R/server.R > temp
mv temp IsoplotRshiny/R/server.R