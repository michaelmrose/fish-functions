function nstatus
	set google 8.8.8.8 net\n
  set router 192.168.1.1 router\n
  set modem 192.168.0.1 modem\n
  set routes $router $modem $google
  echo $routes[1]
end
