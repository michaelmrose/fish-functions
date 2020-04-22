# Defined in /home/michael/.config/fish/buffer/testfn.fish @ line 2
function testfn
    if status is-interactive
        echo $argv
    else
        msg $argv
    end
end
