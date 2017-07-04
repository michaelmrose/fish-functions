function text-aid
	set dir (pwd)
  cd ~/ext-projs/taid/node_modules/text-aid-too/server
  set -x TEXT_AID_TOO_EDITOR "emacsclient -c"
  set -x TEXT_AID_TOO_SECRET "fuck"
  ./server.coffee &
  cd $dir
end
