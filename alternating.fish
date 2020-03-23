# Defined in /home/michael/.config/fish/buffer/alternating.fish @ line 2
function alternating
    echo a is $argv
    echo o is (odds $argv)
    set -x odds (odds $argv)
    set -x evens (evens $argv)
end
