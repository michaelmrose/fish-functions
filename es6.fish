function es6
	set containingFolder (cutlastn / 2- $argv)
  if substr $argv /
    set file (cutlastn / 1 $argv | cut -d . -f1) 
  else
    set file $argv
  end
  echo traceur --out $containingFolder/$file.js --script $argv
end
