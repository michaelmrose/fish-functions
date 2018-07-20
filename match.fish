# Defined in /home/michael/.config/fish/buffer/match.fish @ line 2
function match
	# set com echo $argv[1] \| ag -i \'\^$argv[2]\$\'
    # eval $com > /dev/null
    string match $argv[1] $argv[2]
end
