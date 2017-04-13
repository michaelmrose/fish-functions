function fix-all-trans
	# apply-to-list "transset -i" (list-windows)
	apply-to-list fix-trans (list-windows)
  for i in (windows-list | gr 'firefox|mpv' | cut -d ' ' -f1)
    # transset -i $i 0.9999
    transset -i $i 1.0
  end
end
