# Defined in /usr/home/michael/.config/fish/buffer/xcape-file.fish @ line 2
function xcape-file
	killall xcape

	set file $argv[-1]

  if not test -f $file
    echo not a file
    return 1
  end

  set timeout (optvalue t 500 $argv) #val default
	eval xcape -t $timeout -e \'(cat $file | condense_lines | sed 's/ /;/g')\'
	# eval xcape -t 500 -e \'(cat $file | condense_lines | sed 's/ /;/g')\'
end
