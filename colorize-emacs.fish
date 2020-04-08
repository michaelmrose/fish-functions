# Defined in /home/michael/.config/fish/buffer/colorize-emacs.fish @ line 1
function colorize-emacs
    set acc $argv[1]
    set fg $argv[2]
    set bg $argv[3]
    set com emf e \'mmr/pywal-colors \"$acc\" \"$fg\" \"$bg\"\'
    eval $com
end
