# Defined in /home/michael/.config/fish/buffer/zeal.fish @ line 2
function zeal
	if not pgrep zeal
    zeal -style adwaita (vals 1..-1 $argv) &
  end
end
