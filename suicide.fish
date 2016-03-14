function suicide
	set -U ZERO_HOUR (seconds)
  function fish_prompt
    if test (seconds) -gt ZERO_HOUR
      kill -9 %self
    end
  end
end
