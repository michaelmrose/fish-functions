function write-iso
	set file $argv[1]
  set disk $argv[3]
  if test -f $file; and test -b $disk
    echo The following disk will be overwritten...
    echo -----------------------------------------
    s fdisk -l $disk
    echo -----------------------------------------
  else
    echo invalid arguments
    return 1
  end
  if read_confirm
    echo dd if=$file of=$disk bs=1M status=progress#;and sync
  end
end
