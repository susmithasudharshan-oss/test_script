#Directory Organizer
#!/bin/bash

mkdir images
echo "image folder created"
mkdir documents
echo "documets folder created"
mkdir scripts
echo "scripts folder created"
cp *.jpg images
cp *.png images
echo "copied all jpg and png files to images folder"
cp *.txt documents
cp *.pdf documents
echo "copied all txt and pdf files to documents folder"
cp *.sh scripts
echo "copied all sh files to script folder"
