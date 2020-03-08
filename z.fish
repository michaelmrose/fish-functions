# Defined in /home/michael/.config/fish/buffer/z.fish @ line 2
function z
	if test -d $argv
        cd $argv
        zoxide add
    else
	      set zres ( zoxide query $argv|cut -c8-)
        if test (count $zres) -gt 0
            cd $zres
        end
  end
end
