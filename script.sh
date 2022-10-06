#!/bin/bash
#Variables
jekyll="/home/maria/Documentos/Web-estática/_site/"
repo="/home/maria/Documentos/Github/Blog-Jekyll"

#Nos movemos al directorio del sitio web jekyll y lotransformamosen html
cd $jekyll
bundle exec jekyll build

#Función actualizar
#rsync -rvcm --delete $jekyll $repo
cp $jekyll $repo

#Sincronizamos con github
cd $repo
git add *
git commit -am "Añadida entrada nueva"
git push

#Muestra el estado del repositorio
git status