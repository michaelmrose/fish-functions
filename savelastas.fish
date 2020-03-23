# Defined in /home/michael/.config/fish/buffer/savelastas.fish @ line 2
function savelastas
    set -x argv[1] (eval $history[1])
end
