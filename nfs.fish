function nfs
	switch $argv[1]
    case update
      sudo exportfs -rv
    case status
      serv nfs status
    case stop
      serv nts stop
    case start
      serv nfs start
    case edit
      sudo -e /etc/exports
    case ls
      sudo exportfs -s
    end
end
