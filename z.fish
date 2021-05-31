# Defined in /usr/home/michael/.config/fish/buffer/z.fish @ line 2
function z
	if test -d $argv
      cd "$argv"
      zoxide add
    else
	      set zres (zoxide query "$argv")
        if test (count $zres) -gt 0
            cd "$zres"
            zoxide add (pwd)
        end
  end
end
