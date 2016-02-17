function unzip-deb
	deb2targz $argv
    set fname (cutlastn . 2- $argv).tar.gz
    echo $fname
    uz $fname
    rm $fname
end
