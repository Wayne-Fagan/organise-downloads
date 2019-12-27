#!/bin/bash

# A script to clean up the Downloads directory

echo '*******************************************'
echo 'Removing whitespaces from file names'
echo '*******************************************'

# Remove whitespaces from files
find ~/Downloads -depth -name '* *' -execdir rename 's/ /_/g' {} +

echo '*******************************************'
echo 'Cleaning up Downloads directory'
echo '*******************************************'

# Move image type files
find ~/Downloads -maxdepth 1 -type f -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" |while IFS= read -r image; do
   mkdir -p ~/Downloads/images
   mv -- $image ~/Downloads/images
done

# Move spreadsheet type files
find ~/Downloads -maxdepth 1 -type f -name "*.csv" -o -name "*.xls" -o -name "*.xlsx" |while IFS= read -r spreadsheet; do
   mkdir -p ~/Downloads/spreadsheets
   mv -- $spreadsheet ~/Downloads/spreadsheets
done

# Move pdf type files
find ~/Downloads -maxdepth 1 -type f -name "*.pdf" |while IFS= read -r pdf; do
   mkdir -p ~/Downloads/pdfs
   mv -- $pdf ~/Downloads/pdfs
done

# Move videos type files
find ~/Downloads -maxdepth 1 -type f -name "*.mov" -o -name "*.m4v" -o -name "*.avi" -o -name "*.mpg" -o -name "*.mpeg" -o -name "*.mp4" |while IFS= read -r video; do
   mkdir -p ~/Downloads/videos
   mv -- $video ~/Downloads/videos
done

# Move zip type files
find ~/Downloads -maxdepth 1 -type f -name "*.zip" |while IFS= read -r zip; do
   mkdir -p ~/Downloads/zip
   mv -- $zip ~/Downloads/zip
done

# Move text type files
find ~/Downloads -maxdepth 1 -type f -name "*.txt" |while IFS= read -r text; do
   mkdir -p ~/Downloads/text
   mv -- $text ~/Downloads/text
done

echo '*******************************************'
echo 'Files in Downloads have now been cleaned up'
echo '*******************************************'