# jamendo-lyrics-fetcher
A small bash script I made to download lyrics for songs from jamendo.com. It uses the jamendo.com api. It checks mp3 files metatdata and looks the song up on jamendo.com After that, it will automatically add the lyrics to the mp3 file under the USLT tag.

This app is several years old, before I got to university, and was originally only meant for private use. I put it here in case someone else can use it.

To use it, simply run the script with any mp3 files downloaded from jamendo.com as arguments. It does not work on ogg. It will only write lyrics it can find.

WARNING: This script will remove all existing lyrics in the USLT tag in all cases. It will only check jamendo.com for lyrics.
DO NOT RUN THIS IF YOU DO NOT WANT YOUR MP3 FILES TO HAVE LYRICS REMOVED. 

It was made and tested under ubuntu. It requires several dependancies:

mp3info

eyeD3

curl

sed

