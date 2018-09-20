# Defined in /home/michael/.config/fish/buffer/open-appropriate.fish @ line 2
function open-appropriate
	if exists $argv
	    set dir "$argv"
  else
        set dir (pwd)
    end
    set contents (con $dir)

	  set images (p $contents | g 'png$|jpg$|jpeg$|bmp$')
    set numimages (count $images)
    set books  (p $contents | g 'epub$|mobi$|pdf$') 
    set numbooks (count $books)
    set vids   (p $contents | g 'mkv$|mpeg$|wmv$|avi$|mp4$')
    set numvids (math 5 \* (count $vids))
    set tunes  (p $contents | g 'ogg$|mp3$|flac$')
    set numtunes (count $tunes)
    set values $numimages $numbooks $numvids $numtunes
    set biggest (max $values)
    switch $biggest
        case $numbooks
            open-book (p $books | rofi -dmenu -I) &
        case $numvids
            mpv (p $vids | sort -V) &
        case $numtunes
            clementine -a $tunes &
        case $numimages
            pics $dir &
    end
end
