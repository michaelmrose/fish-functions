function smb
	if not exists $argv
    serv samba status
  else
    serv samba $argv
  end
end
