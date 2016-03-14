function suicide
	set -U ZERO_HOUR (seconds)
  function fish_prompt
    if greater-than (seconds) $ZERO_HOUR
      kill -9 %self
    end
  end
end
