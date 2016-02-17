function sendme-email
	echo $argv | msmtp -a default michael@rosenetwork.net
end
