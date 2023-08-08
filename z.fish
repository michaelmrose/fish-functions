function z
    if test -d $argv
      cd "$argv"
      zoxide add (pwd)
      if test -d .venv
         ve
      end
  else
          set zres (zoxide query "$argv")
        if test (count $zres) -gt 0
            cd "$zres"
            zoxide add (pwd)
        end
  end
end
