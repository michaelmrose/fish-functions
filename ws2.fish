# Defined in /home/michael/.config/fish/buffer/decorate-workspacename_workspa.fish @ line 40
function ws2
    set target (
    switch $argv
        case a
            1
        case b
            2
    end
    )

            echo $target $argv
end
