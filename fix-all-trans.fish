function fix-all-trans
	set mpv (windows-list | grep gl.mpv | cut -d ' ' -f1)
  for i in $mpv
    transset id $i 1.0
  end
	apply-to-list fix-trans (list-windows)
end
