# Defined in /home/michael/.config/fish/buffer/localalbumart.fish @ line 1
function localalbumart
    set localart (albumdir)/cover.*
    if exists $localart
        cp $localart /tmp/kunst.jpg
    end
end
