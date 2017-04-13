function fix-all-trans
	# apply-to-list "transset -i" (list-windows)
	apply-to-list fix-trans (list-windows)
  transset -i (windows-list | gr 'firefox|mpv' | cut -d ' ' -f1) 0.9999
end
