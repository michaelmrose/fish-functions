function clje
	set temp /tmp/(uid)
  echo '#!/opt/bin/planck' >> $temp
  while read -l line
    echo $line >> $temp
  end
  cat $temp
  rm $temp
end
