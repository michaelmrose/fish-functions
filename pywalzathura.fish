# Defined in /home/michael/.config/fish/buffer/pywalzathura.fish @ line 2
function pywalzathura
    set zathuraconfig ~/.config/zathura/zathurarc
    cat ~/.config/zathura/zathurarc.primary > $zathuraconfig
    genzathurarc.sh >> $zathuraconfig
end
