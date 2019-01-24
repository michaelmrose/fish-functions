# Defined in /home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
	set acc 0
    for i in (pgrep -U $USER $argv[1])
        set val (math (pmap -x $i | grep total | condense_spaces | cut -d " " -f5) / 1024)
        set acc (math "$acc" + "$val")
    end
    echo {$acc}M
    # set val (math (pmap -x (pgrep $argv) | grep total | condense_spaces | cut -d " " -f5) / 1024)
    # echo {$val}M
    for i in (pgrep $argv);pmap -x $i | gr total | nth 3;end | sumof
end
