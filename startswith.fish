function startswith
	set begin $argv[1]
  set str $argv[2..-1]
  set com echo $str \| ag \"\^$begin\"
  # set com (echo $com | sed "s#+#\+#g")
  eval $com > /dev/null
end
