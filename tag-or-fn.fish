function tag-or-fn
	if functions $argv > /dev/null
    echo function
  else if test -f ~/.config/fish/tags/$argv
    echo tag
  else
    echo unkown
  end
end
