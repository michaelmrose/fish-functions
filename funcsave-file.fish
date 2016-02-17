function funcsave-file
	set fnames (println (return-fnames-of-file $argv))
  source $argv
  for fn in $fnames
    funcsave $fn
    # git -C ~/.config/fish/functions add $fn.fish
    # git -C ~/.config/fish/functions commit -m "editing $fn.fish"
  end
end
