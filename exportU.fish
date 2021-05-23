# Defined in /usr/home/michael/.config/fish/buffer/exportU.fish @ line 1
function exportU
		function export --description 'Set env variable. Alias for `set -Ux` for bash compatibility.'
				if not set -q argv[1]
						set -x
						return 0
				end
				for arg in $argv
						set -l v (string split -m 1 "=" -- $arg)
						switch (count $v)
								case 1
										set -Ux $v $$v
								case 2
										if contains -- $v[1] PATH CDPATH MANPATH
												set -l colonized_path (string replace -- "$$v[1]" (string join ":" -- $$v[1]) $v[2])
												set -gx $v[1] (string split ":" -- $colonized_path)
										else
												# status is 1 from the contains check, and `set` does not change the status on success: reset it.
												true
												set -Ux $v[1] $v[2]
										end
						end
				end
		end

end
