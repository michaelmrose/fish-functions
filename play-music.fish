function play-music
	set tracks (beet ls $argv --path)
    clementine -a $tracks
    echo playing (count $tracks) tracks
end
