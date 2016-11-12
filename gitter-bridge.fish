function gitter-bridge
	set -x DEBUG 'irc*'
  in-dir ~/proj/downloaded/irc-bridge2 npm start &
end
