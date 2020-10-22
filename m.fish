function m
    switch (count $argv)
        case 1
            add-file-to-recent-playlist $argv
        case '*'
            save-list-of-files-to-playlist $argv
    end
   mpv $argv & 
end
