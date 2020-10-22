# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 56
function m2
    switch (count $argv)
        case 1
            add-file-to-recent-playlist $argv
        case '*'
            save-list-of-files-to-playlist $argv
    end
   mpv $argv & 
end
