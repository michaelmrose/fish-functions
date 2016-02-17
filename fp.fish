function fp
	set tmp $TMPDIR/fzf.result
  set ph ""
  while read -l line
    echo $line | fzf > $tmp
    set ph $ph $line
  end
  echo $ph | fzf > tmp
  # fzf --query="$argv[1]" --select-1 --exit-0 > $tmp
  if [ (cat $tmp | wc -l) -gt 0 ]
    set -U fquery (cat $tmp)
  end
end
