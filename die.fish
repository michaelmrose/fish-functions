function die
    if exists $argv
       if isnumeric $argv[1]
          echo killport $argv[1]
       else
           echo foreach (pgrep "$argv[1]") "kill -9 _"
       end
    else
          xkill
    end
end
