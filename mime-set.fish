function mime-set
	set type $argv[1]
    set mimetype (mimet $type)
    set command $argv[2]

    set video mkv wmv avi mov mp4
    set audio mp3 flac ogg wav
    set ebooks epub mobi
    set web http https
    
    if not desktop_file_exists $command
        create_desktop_file $command $mimetype 
    end
    
    set lst $$type
    if exists $lst
        for i in $lst
            mime-set $i $command
        end
    else
        gvfs-mime --set $mimetype $command.desktop
        xdg-mime default $command.desktop $mimetype
    end

end
