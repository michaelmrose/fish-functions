# Defined in /home/michael/.config/fish/buffer/repeatedly.fish @ line 2
function repeatedly
    argparse 't/time=+' -- $argv
    echo time is $time
    # while true
    #     $argv[2..-1]
    #     sleep $argv[1]
    # end
end
