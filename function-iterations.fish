function function-iterations
	set revisions (get-function-revisions $argv)
  set cnt 1
	for c in $revisions

    set src (eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish)
    set checksum (echo $src | checksum-simple)
    if not contains $checksum $checksums
      set checksums $checksums $checksum
      echo \($cnt\)
      println $src
      set cnt (math $cnt + 1)
    else
    end

  end
end
