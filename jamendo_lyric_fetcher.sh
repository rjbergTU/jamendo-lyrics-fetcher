#/bin/bash
for file in "$@"
do
	echo "$file"
	id=f7654386
	artist=$(mp3info -p "%a" "$file")
	artist=${artist// /%20}
	title=$(mp3info -p "%t" "$file")
	title=${title// /%20}
	url="api.jamendo.com/v3.0/tracks?client_id=$id&artist_name=$artist&include=lyrics&name=$title&format=xml&type=single"
	lyrics=$(curl -L $url)
	lyrics=$(echo "$lyrics"|sed -n '/<lyrics>/,/<\/lyrics>/p')
	lyrics=$(echo "$lyrics"|sed 's/^.*<lyrics>//;s/<\/lyrics>.*$//;s/<lyrics\/>.*$//')
	lyrics=$(echo "$lyrics"|iconv -c -t ascii -)
	eyeD3 --to-v2.4 --set-encoding=utf16-BE --lyrics=::"$lyrics" "$file"
done
