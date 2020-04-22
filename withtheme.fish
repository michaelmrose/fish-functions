# Defined in /home/michael/.config/fish/buffer/withtheme.fish @ line 2
function withtheme
    set name (echo $argv[1]| cut -d : -f1)
    set style (echo $argv[1]| cut -d : -f2)
    if not exists $style
        set style light
    end
    set theme $name:$style
    # env GTK_THEME=$argv[1] $argv[2..-1]
    echo env GTK_THEME=$theme $argv[2..-1]
end
