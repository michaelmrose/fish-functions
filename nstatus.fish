function nstatus
	set google 8.8.8.8 net

  set router 192.168.1.77 router

  set modem 192.168.0.1 modem

  check-nstatus $router
  check-nstatus $modem
  check-nstatus $google
end
