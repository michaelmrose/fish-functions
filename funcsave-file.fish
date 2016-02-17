function funcsave-file
	set fnames (println (return-fnames-of-file $argv))
  source $argv
  for fn in $fnames
    fn save $fn
  end
end
