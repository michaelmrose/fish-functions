# Defined in /home/michael/.config/fish/buffer/batp.fish @ line 2
function batp
	set lex (get-ext $argv[1])
    set file $argv[1]
    set res (p (bat $file))
    if test (count $argv) -gt 1
        for item in $argv[2..-1]
            echo eval "set res (p $res | $item)"
        end
    end
    echo p $res | bat -l $lex
end
