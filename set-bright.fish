function set-bright
	set displays (get-connected-displays)
  set vals (apply-to-list "calc-brightness $argv" $displays)
  set cnt (count $displays)
  set com "xrander"
  for i in (seq $cnt)
    set com $com --output $displays[$i] --brightness $vals[$i]
  end
  echo $com
end
