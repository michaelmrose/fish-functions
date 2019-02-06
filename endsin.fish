# Defined in /home/michael/.config/fish/buffer/endsin.fish @ line 1
function endsin
	set com fd
    set extensions $argv[1..-2]
    set path $argv[-1]
    for e in $extensions 
        set com $com -e $e
    end
    set com $com -c never '.*' $path
    echo $com
    $com
end
