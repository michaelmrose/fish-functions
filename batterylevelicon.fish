# Defined in /home/michael/.config/fish/buffer/batterylevel_batterylevelicon.fish @ line 18
function batterylevelicon
    set state $argv[1]
    set numeric $argv[2]
    if [ $state = charging ]
        set start F00B
    else
        set start F00C
    end
    set hex $start(hexdigit (math $numeric / 10))
    printf "\U$hex  $state $numeric%%"|tr -d '
'
end
