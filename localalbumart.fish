# Defined in /home/michael/.config/fish/buffer/localalbumart.fish @ line 2
function localalbumart
    set localart (albumdir)/cover.*
    if exists $localart
        cp $localart /tmp/kunst.jpg
        echo $localart
    else
        return 1
    end
end
