function die
    if exists $argv
       if isnumeric $argv[2]
          killport $argv[2]
       else
           foreach (pgrep "$argv[2]") "kill -9 _"
       end
    else
          xkill
    end
end
