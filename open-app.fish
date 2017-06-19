function open-app
	set target (appkey $argv) \&
  # echo $target
  set rorrlist inbox googlecal
  if contains $target $rorrlist
    raiseorrun-appkey $argv
  else
    eval $target
  end
  
  # er vi3op
  # update-op-status
end
