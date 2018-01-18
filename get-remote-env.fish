# Defined in /home/michael/.config/fish/buffer/get-remote-env.fish @ line 2
function get-remote-env
	set machine $argv[1]
  set val $argv[2]
  set com ssh $machine echo \'\$$val\'
  eval $com
end
