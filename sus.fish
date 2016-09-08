function sus
	manage-share ensure-unmounted
  sleep 5
  sudo pm-suspend
  sleep 5
  manage-share ensure-mounted
end
