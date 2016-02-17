function function-iterations
	set revisions (get-function-revisions $argv)
  set cnt 1
	for c in $revisions
    echo \($cnt\)
    set src (eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish)
    set checksum (echo $src | checksum-simple)
    if not contains $checksum $checksums
      println $src
    else
      set checksums $checksums $checksum
    end
    set cnt (math $cnt + 1)
  end
end
