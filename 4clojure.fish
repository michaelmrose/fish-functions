function 4clojure
	switch $argv[1]
    case up
      set dir (pwd)
      cd ~/proj/4clojure
      mongod &
      lein ring server &
      cd $dir
    case down
      killall mongod
  end
end
