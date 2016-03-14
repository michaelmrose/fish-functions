function suicide
	set -U ZERO_HOUR (seconds)
  function fish_prompt
    if test (seconds) -lt ZERO_HOUR
      echo if true
      kill -9 %self
    else
      echo if false
    end
  end
end
