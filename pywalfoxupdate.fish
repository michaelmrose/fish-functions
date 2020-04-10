# Defined in /home/michael/.config/fish/buffer/pywalfoxupdate.fish @ line 2
function pywalfoxupdate
    if pgrep firefox
        echo updating firefox
        python /home/michael/extproj/Pywalfox/daemon/pywalfox.py update
    end
end
