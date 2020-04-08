# Defined in /home/michael/.config/fish/buffer/colorize-emacs_walfn.fish @ line 2
function colorize-emacs
    if not exists $argv
        set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
        set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
        set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
        echo a f b is $accent $fg $bg
    else
        set acc $argv[1]
        set fg $argv[2]
        set bg $argv[3]
    end
    set com emf e \'mmr/pywal-colors \"$acc\" \"$fg\" \"$bg\"\'
    eval $com
end
