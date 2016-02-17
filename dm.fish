function dm
	switch $argv[1]
        case "run"
            dmenu_run -nb "black" -sf "#036300" -sb "#A6CD01" -nf "grey" -fn Inconsolata-13 -b -l 10 -i -p "Command: "
        case "menu"
                dmenu -nb "black" -sf "#036300" -sb "#A6CD01" -nf "grey" -fn Inconsolata-13 -b -l 10 -i -p $argv[2]
        case "choice"
            echo "" | dm menu "$argv[2]"
    end
end
