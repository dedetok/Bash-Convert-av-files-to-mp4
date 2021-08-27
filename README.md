Requirement: ffmpeg

This bash script will:
1. search av files in given folder
2. create a new folder for mp4, folder name will be [given-folder]-mp4
3. convert each av files in given folder, adding .mp4 at the end of file's name, and put them in new folder

Usage: 
$ ./av2mp4.sh [foldername]

For Example:
$ ./av2mp4.sh 2021-08-15
...
$ ls | grep  2021-08-15
2021-08-15
2021-08-15-mp4

av files are raw h264
