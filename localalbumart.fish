# Defined in /home/michael/.config/fish/buffer/localalbumart.fish @ line 1
function localalbumart
    set localart (albumdir)/cover.jpg
    if test -f $localart
        cp "$localart" /tmp/kunst.jpg
        echo "$localart"
    else
        return 1
    end
end
