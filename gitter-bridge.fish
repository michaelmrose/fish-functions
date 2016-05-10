function gitter-bridge
	set dir (pwd)
	set -x DEBUG 'irc*'
  cd ~/proj/downloaded/irc-bridge2
  npm start &
  cd $dir
end
