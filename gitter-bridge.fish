function gitter-bridge
	set dir (pwd)
	set -x DEBUG 'irc*'
  cd ~/proj/downloaded/irc-bridge
  npm start &
  cd $dir
end
