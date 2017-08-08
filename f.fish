# Defined in /home/michael/.config/fish/buffer/f.fish @ line 2
function f
	set command cutlastn \; 3- (history)[2]  
  echo command: "$command" has finished
end
