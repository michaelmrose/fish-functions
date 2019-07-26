# Defined in /home/michael/.config/fish/buffer/mu4e.fish @ line 2
function mu4e
	emf ce mmr/mu4e-inbox &
  sleep 0.5
  xdotool search --onlyvisible --class Emacs key Return
end
