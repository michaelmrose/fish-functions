function get-youtube-playlist
	set dir (pwd)
    set tmp /tmp/ytd
    if not test -d $tmp
        mkdir $tmp
    end
    cd $tmp
    set -x useragent 'Mozilla/5.0 (X11; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0'
    youtube-dl -q --netrc --flat-playlist --write-pages --user-agent "$useragent" https://www.youtube.com/channel/UCr-n4_yU5HTw9rrGleWhFIg/ > /dev/null
    set file (here uur)
    set txt (cat $file | pup | grep $argv | pup 'json{}' | grep href | trim | cut -d "/" -f2 | cut -d '"' -f1)
    set url https://www.youtube.com/$txt
    cd $dir
    echo $url
end
