# Defined in /usr/home/michael/.config/fish/buffer/set-lightdm-bg.fish @ line 2
function set-lightdm-bg
    if exists $argv[1]
        set img $argv[1]
    else
        set img $bgimage[1]
    end
    s cp $img /etc/lightdm/lightdmbg.jpg
end
