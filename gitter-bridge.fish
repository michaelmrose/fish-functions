function gitter-bridge
	set -x DEBUG 'irc*'
  set dir (pwd)
  cd ~/ext-projs/irc-bridge2
  npm start &
  cd $dir
  # in-dir ~/proj/downloaded/irc-bridge2 npm start &
end
