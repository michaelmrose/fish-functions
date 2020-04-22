# Defined in /home/michael/.config/fish/buffer/withtheme.fish @ line 2
function withtheme
    set theme (echo $argv[1] |cut -d : -f1-)
    count $theme

    echo n is $name s is $style
    set theme {$name}:$style
    # env GTK_THEME=$argv[1] $argv[2..-1]
    echo env GTK_THEME=$theme $argv[2..-1]
end
