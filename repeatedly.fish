# Defined in /home/michael/.config/fish/buffer/repeatedly.fish @ line 2
function repeatedly
    set -l options 't/time'
    argparse $options -- $argv
    echo a is $argv
    echo t is $t
    # while true
    #     $argv[2..-1]
    #     sleep $argv[1]
    # end
end
