function switch-master
	git remote remove origin
  git remote add origin $argv
  git branch --set-upstream-to=origin/master
  git checkout master
  git pull
end
