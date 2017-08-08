# Defined in /tmp/19622194-c937-403f-925d-2fd549434ab4.fish @ line 2
function f
	set command cutlastn \; 2-(history)[2]  
  echo command: "$command" has finished
end
