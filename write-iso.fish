# Defined in /home/michael/.config/fish/buffer/write-iso.fish @ line 2
function write-iso
	set help "Usage: write-iso PATH-TO-ISO to PATH-TO-DEVICE \n
 Example write-iso /med/dl/distro.iso to /dev/sdz"
  if not exists $argv
    echo $help
    return 1
  end
  if match $argv[1] --help
    echo $help
    return 1
  end
  

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
    sudo dd if=$file of=$disk bs=1M status=progress;and sync
  end
end
