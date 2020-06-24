# Defined in /home/michael/.config/fish/buffer/set-lightdm-bg.fish @ line 2
function set-lightdm-bg
    if exists $argv
        set img $argv
    else
        set img $bgimage
    end
    s cp $img /etc/lightdm/bg.jpg
end
