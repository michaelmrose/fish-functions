# Defined in /usr/home/michael/.config/fish/buffer/services.fish @ line 2
function services
		if not exists $argv
				echo                  ENABLED
				echo ===================
				p /run/runit/runsvdir/current/*|each basename
				echo                  USER
				echo ===================
				p ~/service/enabled/*|each basename
				echo                  ALL
				echo ===================
				p /etc/sv/*|each basename
				return 0
		end
		switch $argv[1]
				case enabled
						p /run/runit/runsvdir/current/*|each basename
				case user
						p ~/service/enabled/*|each basename
				case all
						p /etc/sv/*|each basename
				case disabled
						set all (p /etc/sv/*|each basename)
						set enabled (p /run/runit/runsvdir/current/*|each basename)

		end
end
