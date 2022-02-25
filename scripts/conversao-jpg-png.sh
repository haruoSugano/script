#!bin/bash

cd ~/Downloads/imagens-livros
if [ ! -d png ]
then
	mkdir png
fi
for image in *.jpg
do
	image_sem_extensao=$(ls $image | awk -F. ' { print $1 }')
	convert $image_sem_extensao.jpg png/$image_sem_extensao.png
done

