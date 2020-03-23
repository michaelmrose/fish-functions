# Defined in /home/michael/.config/fish/buffer/alternating.fish @ line 1
function alternating
    set -x odds (odds $argv)
    set -x evens (evens $argv)
end
