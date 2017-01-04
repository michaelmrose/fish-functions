function write-iso
	set file $argv[1]
  set disk $argv[2]
  echo The following disk will be overwritten...
  echo -----------------------------------------
  s fdisk -l $disk
  echo -----------------------------------------
  read_confirm
  echo dd if=$file of=$disk bs=1M status=progress#;and sync
end
