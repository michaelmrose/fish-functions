# Defined in /home/michael/.config/fish/buffer/withtheme.fish @ line 2
function withtheme
    if string match '*:*' $argv[1]
        set theme $argv[1]
    else
        set theme $argv[1]:light
    end

    # env GTK_THEME=$argv[1] $argv[2..-1]
    echo env GTK_THEME=$theme $argv[2..-1]
end
