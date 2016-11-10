function password-unlock
	while true
    if match (rfi enter 'password: ') jazz
      unlockme;and break;
    else
      msg "try again"
    end
  end
end
