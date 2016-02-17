function find-all-duplicate-backgrounds
	checksum-all-backgrounds
  set acc ''
  set duplicates ''
  for i in (findall $wallpaperroot image)
      if contains (checksum-simple $i) $acc
        set line $i is the same as (given-checksum-return-filename (checksum-simple $i))
        set duplicates $duplicates "$line"
      end
      set acc $acc (checksum-simple $i)
  end
  println $duplicates
end
