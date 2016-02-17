function function-iterations
	switch $argv
    case -p
      set prettyprint true
      set revisions (get-function-revisions $argv[2])
    case '*'
      set revisions (get-function-revisions $argv)
  end
  set cnt 1
	for c in $revisions

    set src (eval git -C ~/.config/fish/functions --no-pager show $c:$argv.fish)
    set checksum (echo $src | checksum-simple)
    if not contains $checksum $checksums
      set checksums $checksums $checksum
      if exists $prettyprint
        echo \($cnt\)
        println $src | pymentize
      else
        println $src
      end
      set cnt (math $cnt + 1)
    else
    end

  end
end
