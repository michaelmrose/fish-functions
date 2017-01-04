function write-iso
	set file $argv[1]
  set disk $argv[3]
  echo The following disk will be overwritten...
  echo -----------------------------------------
  s fdisk -l $disk
  echo -----------------------------------------
  if test -f $file; and read_confirm
    echo dd if=$file of=$disk bs=1M status=progress#;and sync
  end
end
