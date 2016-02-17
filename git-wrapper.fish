function git-wrapper
	switch $argv[1]
        case list-remote
          list-remote
        case open-remote
          open-remote
        case switch-master
          switch-master $argv[2..-1]
        case co
          git checkout $argv[2..-1]
        case c
          if test (count $argv) -gt 2
            git commit -m "$arvg[2]" $argv[3..-1]
          else
            git commit -m "$argv[2]"
          end
        case info
          git rev-parse HEAD
        case lg
          git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit
        case '*'
          git $argv
    end
end
