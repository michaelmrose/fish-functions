function es6
	set containingFolder (cutlastn / 2- $argv)
  set file (cutlastn / 1 $argv | cut -d . -f1) 
  echo traceur --out $containingFolder/$file.js --script $argv
end
