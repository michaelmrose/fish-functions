function vimcloj
	session-load $argv
    vs $argv
    konsole --workdir /home/michael/proj/clojure/{$argv} -e lein repl
end
