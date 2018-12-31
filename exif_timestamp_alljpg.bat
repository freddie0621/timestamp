set chaine=resize
set chaine1=rmoins45


cd DCIM\101GOPRO
::convert *.jpg foo.pdf
::convert -type Grayscale image.jpg image-grise.jpg
::convert harc01.png  -background transparent -rotate 45 r1.png
::convert example.png -resize x100 example.png
::for %%1 in ("*.png") do  convert -resize x200 %%1 "resize200\%%~n1%chaine%.png"


::for %%1 in ("*.jpg") do identify -format %%[exif:DateTime]% %%1

::for %%1 in ("*.jpg") do convert %%1 -gravity SouthEast -pointsize 60  -fill white -annotate +30+30   %%[exif:DateTimeOriginal] "resize200\%%~n1%chaine%.JPG" 

::for %%1 in ("*.jpg") do convert %%1 -gravity SouthEast -pointsize 60  -fill white -annotate +30+30   %%[exif:DateTimeOriginal] %%1 



mogrify   -gravity SouthEast -pointsize 60  -fill white -annotate +30+30   %%[exif:DateTimeOriginal]  *.jpg
::pause
