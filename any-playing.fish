# Defined in /home/michael/.config/fish/buffer/any-playing.fish @ line 2
function any-playing
	# for player in (playerctl -l)
  #   if match (playerctl status -p $player) Playing
  #     return 0
  #   end
  # end
  # return 1
  foreach (playerctl -l) "playerctl status -p _" | grep Playing > /dev/null
end
