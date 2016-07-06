function clje
	set temp /tmp/(uid)
  echo '#!/opt/bin/planck' >> $temp
  while read -l line
    echo $line >> $temp
  end
  chmod +x $temp
  echo $temp
end
