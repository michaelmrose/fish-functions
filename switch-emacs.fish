# Defined in /home/michael/.config/fish/buffer/switch-emacs.fish @ line 1
function switch-emacs
    set name $argv[1]
    emf e save-some-buffers
    emf e kill-emacs
    rm ~/.emacs.d
    ln -s ~/.config/multimacs/$name ~/.emacs.d
    emd &
    daj
end
