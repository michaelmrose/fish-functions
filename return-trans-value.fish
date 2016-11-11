function return-trans-value
	set app (echo $argv | cut -d " " -f4 | cut -d "." -f1)
    switch $app
        case Qvim
            echo 0.9
        case DrRacket
          echo 0.95
        case Clementine
            echo 0.89
        case Zathura
            echo 1.0
        case Emacs
            echo 0.90
        case Spacefm
            echo 0.95
        case LilyTerm
            echo 0.88
        case Hexchat
            echo 0.95
        case i3bar
            echo 0.8
        case i3-frame
            echo 0.5
        case "*"
            echo 1.0
    end
end
