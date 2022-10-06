#!/bin/bash
#Variables
jekyll="/home/maria/Documentos/Web-estática/_site"
repo="/home/maria/Documentos/Github/Blog-Jekyll"

cd $jekyll
bundle exec jekyll build

#Función actualizar
rsync -rvcm --delete $jekyll $repo

#Sincronizamos con github
cd $repo
git add *
git commit -am "Añadida entrada nueva"
git push