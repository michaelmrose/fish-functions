function d
	set -x DISPLAY :0
  set com $argv &
  eval $com
end
