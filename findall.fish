function findall
	if test -d $argv[1]
        set loc $argv[1]
        set lst $argv[2..-1]
    else
        set loc './'
        set lst $argv
    end
    switch $lst[1]
        case image
            set lst bmp png jpg jpeg
        case video
            set lst mpv mpeg mkv avi wmv mp4
        case music
            set lst wma mp3 flac ogg wav
    end
    set start "find $loc "
    set second '-regextype posix-extended -regex ".*\.('
    set ending ')"'
    set pipe '|'
    for i in $lst
        set middle $i $pipe $middle
    end
    set middle (condense $middle)
    set middle (echo $middle | rev | cut -d '|' -f2- | rev)
    eval (condense $start $second $middle $ending)
end
