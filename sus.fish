function sus
	manage-share ensure-unmounted
  sudo pm-suspend
  manage-share ensure-mounted
end
