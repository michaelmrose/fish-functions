function get-function-revisions
	set revs (git -C ~/.config/fish/functions lgg | grep "editing $argv.fish" | cut -d " " -f2)
  for r in $revs
    set src (git -C ~/.config/fish/functions --no-pager show $r:$argv.fish)
    set checksum (echo $src | checksum-simple)
    if not contains $checksum $checksums
      set checksums $checksums $checksum
      echo $r
    end
  end
  # println $revs
end
