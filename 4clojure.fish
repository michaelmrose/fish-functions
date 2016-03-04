function 4clojure
	set dir (pwd)
  cd ~/proj/4clojure
  mongod &
  lein ring server
  cd $dir
end
