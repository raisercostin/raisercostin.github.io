---
Date: 2015-02-04
Title: Own Your Media
Tags: image,automatic,organizer,exif,gps,movie,video,picture,media,categories,dateTime,localDateTime,dateTimeZone,UTC
Slug: own-your-media
image: /2015-02-04--own-your-media--screenshot.png
---
This is an windows application that will automatically analyse all your images and videos in a folder and propose several other folders with all of them organized.

# 	Features: #

Current features are:

- the analysis is fast (100G in minutes) and will be improved
- the images content is not modified
- the given origin folder structure or content is not modified in any way
- the proposed folders contain all the files from the origin folder only structured and renamed differently
- any of the original folder or the proposals can be *SAFELY* deleted to keep only the best view
- the "copy" is "smart" (using hard links) and is very fast and doesn't consume additional disk space
- more view proposals will be added (started with 5 now there are 10)
- the application doesn't need manual work to be done except choosing the folder with images (this step could be also removed in next versions)

![folder restructured](/2015-02-04--own-your-media--screenshot.png)

# Download & Install

- Download the application [organize.jar](https://bintray.com/raisercostin/maven/download_file?file_path=org%2Fraisercostin%2Fownit_2.11%2F0.10%2Fownit_2.11-0.10-one-jar.jar)

## Windows

- Java should be installed.
- Now double click on organize.jar and the application will ask for a folder to be organized.
![](/2015-02-08--own-your-media--screenshot2.png)
<img src="/2015-02-08--own-your-media--screenshot2.png">

## Windows Command Line - For tech savy users

- Java should be installed.
- Download the application.

From command line you can run 

    :::shell
	java -jar organize.jar "d:\photos1"


## Linux-Ubuntu shell

Java should be installed.

    :::shell
    sudo apt-cache search java7
    sudo apt-get install default-jre

Exiftool should be installed.

    :::shell
	sudo apt-get install libimage-exiftool-perl
	
Download the application

    :::shell 
	wget https://bintray.com/raisercostin/maven/download_file?file_path=org%2Fraisercostin%2Fownit_2.11%2F0.10%2Fownit_2.11-0.10-one-jar.jar -O organize.jar
	
From command line you can run 

    :::shell
	java -jar -Dexiftool.path=exiftool organize.jar test1/

	
# Usage

For example on request to organize folder d:\personal\photos-tofix\2006 you will get 6 proposals of organization in 6 folders each of them containing all files from the original folder:

- flat - all files are renamed but existing subfolder structure is removed
- standard - all files but keeping already existing structure
- byYear - the files are organized in subfolders specific to the year
- byYearMonth - the files are organized in subfolders specific to the year and month
- byCounter - the files are organized by using the camera image counter and all files in a single folder (useful to detect duplicates)

Now your media files are organized using the important exif information interpreted with a lot of smartness and awesomeness.
After this you can keep all proposals or remove some of them, or remove the original folder.

# Sample

	:::sample
	> java -jar organize.jar d:\personal\photos-tofix\2006

	organize d:\personal\photos-tofix\2006

	analyze d:\personal\photos-tofix\2006\2006-06-16--11-38-58+XXXX---100-IMG_0817---at-XXX--Fairyland.JPG ...
		detected format	${exifDateTimeOriginal+yyyy}-${exifDateTimeOriginal+MM}-${exifDateTimeOriginal+dd}--${exifDateTimeOriginal+HH}-${exifDateTimeOriginal+mm}-${exifDateTimeOriginal+ss}${const:+XXXX}---${exifFileNumberMajor}-${const:IMG}_${exifFileNumberMinor}${const:---at-XXX--}Fairyland.${fileExtension}
		flat                          -> 	-flat\2006-06-16--11-38-58+XXXX---100-IMG_0817---at-XXX--Fairyland.JPG
		standard                      -> 	-standard\2006-06-16--11-38-58+XXXX---100-IMG_0817---at-XXX--Fairyland.JPG
		byYear                        -> 	-byYear\2006\2006-06-16--11-38-58+XXXX---100-IMG_0817---at-XXX--Fairyland.JPG
		byYearMonth                   -> 	-byYearMonth\2006-06-June\2006-06-16--11-38-58+XXXX---100-IMG_0817---at-XXX--Fairyland.JPG
		byCounter                     -> 	-byCounter\100-0817-Fairyland.JPG
		byCounterKeepStructure        -> 	-byCounterKeepStructure\100-0817-Fairyland.JPG

	analyze d:\personal\photos-tofix\2006\2006-06-16--11-43-42+XXXX---100-IMG_0818---at-XXX--Catching.JPG ...
		detected format	${exifDateTimeOriginal+yyyy}-${exifDateTimeOriginal+MM}-${exifDateTimeOriginal+dd}--${exifDateTimeOriginal+HH}-${exifDateTimeOriginal+mm}-${exifDateTimeOriginal+ss}${const:+XXXX}---${exifFileNumberMajor}-${const:IMG}_${exifFileNumberMinor}${const:---at-XXX--}Catching.${fileExtension}
		flat                          -> 	-flat\2006-06-16--11-43-42+XXXX---100-IMG_0818---at-XXX--Catching.JPG
		standard                      -> 	-standard\2006-06-16--11-43-42+XXXX---100-IMG_0818---at-XXX--Catching.JPG
		byYear                        -> 	-byYear\2006\2006-06-16--11-43-42+XXXX---100-IMG_0818---at-XXX--Catching.JPG
		byYearMonth                   -> 	-byYearMonth\2006-06-June\2006-06-16--11-43-42+XXXX---100-IMG_0818---at-XXX--Catching.JPG
		byCounter                     -> 	-byCounter\100-0818-Catching.JPG
		byCounterKeepStructure        -> 	-byCounterKeepStructure\100-0818-Catching.JPG

	analyze d:\personal\photos-tofix\2006\2006-06-17--16-15-23+XXXX---XXX-IMG_XXXX---at-XXX--What beautiful Taiwan is.jpg ...
		detected format	${exifDateTimeOriginal+yyyy}-${exifDateTimeOriginal+MM}-${exifDateTimeOriginal+dd}--${exifDateTimeOriginal+HH}-${exifDateTimeOriginal+mm}-${exifDateTimeOriginal+ss}${const:+XXXX}${const:---XXX-IMG_XXXX}${const:---at-XXX--}What beautiful Taiwan is.${fileExtension}
		flat                          -> 	-flat\2006-06-17--16-15-23+XXXX---XXX-IMG_XXXX---at-XXX--What beautiful Taiwan is.jpg
		standard                      -> 	-standard\2006-06-17--16-15-23+XXXX---XXX-IMG_XXXX---at-XXX--What beautiful Taiwan is.jpg
		byYear                        -> 	-byYear\2006\2006-06-17--16-15-23+XXXX---XXX-IMG_XXXX---at-XXX--What beautiful Taiwan is.jpg
		byYearMonth                   -> 	-byYearMonth\2006-06-June\2006-06-17--16-15-23+XXXX---XXX-IMG_XXXX---at-XXX--What beautiful Taiwan is.jpg
		byCounter                     -> 	-byCounter\XXX-XXXX-What beautiful Taiwan is.jpg
		byCounterKeepStructure        -> 	-byCounterKeepStructure\XXX-XXXX-What beautiful Taiwan is.jpg

	analyze d:\personal\photos-tofix\2006\2006-07-09--15-16-15+XXXX---XXX-IMG_XXXX---at-XXX--Lotus.jpg ...
		detected format	${exifDateTimeOriginal+yyyy}-${exifDateTimeOriginal+MM}-${exifDateTimeOriginal+dd}--${exifDateTimeOriginal+HH}-${exifDateTimeOriginal+mm}-${exifDateTimeOriginal+ss}${const:+XXXX}${const:---XXX-IMG_XXXX}${const:---at-XXX--}Lotus.${fileExtension}
		flat                          -> 	-flat\2006-07-09--15-16-15+XXXX---XXX-IMG_XXXX---at-XXX--Lotus.jpg
		standard                      -> 	-standard\2006-07-09--15-16-15+XXXX---XXX-IMG_XXXX---at-XXX--Lotus.jpg
		byYear                        -> 	-byYear\2006\2006-07-09--15-16-15+XXXX---XXX-IMG_XXXX---at-XXX--Lotus.jpg
		byYearMonth                   -> 	-byYearMonth\2006-07-July\2006-07-09--15-16-15+XXXX---XXX-IMG_XXXX---at-XXX--Lotus.jpg
		byCounter                     -> 	-byCounter\XXX-XXXX-Lotus.jpg
		byCounterKeepStructure        -> 	-byCounterKeepStructure\XXX-XXXX-Lotus.jpg
