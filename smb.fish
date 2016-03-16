function smb
	if not exist $argv
    serv samba status
  else
    serv samba $argv
  end
end
