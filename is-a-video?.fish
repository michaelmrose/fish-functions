# Defined in /usr/home/michael/.config/fish/buffer/is-a-video?_m.fish @ line 1
function is-a-video?
        test -f $argv && string match --regex 'video/.*$' (file --mime-type $argv)
end
