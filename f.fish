# Defined in /home/michael/.config/fish/buffer/f.fish @ line 2
function f
	set command cutlastn \; 2-(history)[1]  
  echo command: "$command" has finished
end
