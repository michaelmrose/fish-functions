function inverse-of
	switch $argv
    case true
      echo false
    case false
      echo true
    case 0
      echo 1
    case 1
      echo 0
    case True
      echo False
    case False
      echo True
    end
end
