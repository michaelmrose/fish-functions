function die
    if exists $argv
       switch $argv[1]
            case "-p"
                   killport $argv[2]
              case "-n"
                foreach (pgrep "$argv") "kill -9 _"
        end
    else
          xkill
    end
end
