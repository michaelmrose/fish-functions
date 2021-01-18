# Defined in /usr/home/michael/.config/fish/buffer/hours-of-trump.fish @ line 2
function hours-of-trump
		set hours (http 'https://www.timeanddate.com/countdown/to?msg=Countdown%20Clock%20to%20the%20End%20of%20Trump%27s%20Reign%20of%20Terror&p0=263&year=2021&month=1&day=20&hour=12&min=0&sec=0&fromtheme=generic'|pup 'td#el_h2 text{}')
		echo Hours of Trump: $hours
end
