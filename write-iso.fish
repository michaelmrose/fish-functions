# Defined in /home/michael/.config/fish/buffer/write-iso.fish @ line 2
function write-iso
	set help1 'Usage  : write-iso PATH-TO-ISO to PATH-TO-DEVICE' 
  set help2 'Example: write-iso /med/dl/distro.iso to /dev/sdz'
  if not exists $argv
    echo $help1
    echo $help2
    return 1
  end
  if [ $argv[1] = --help ]
    echo $help1
    echo $help2
    return 1
  end
  
  set file $argv[1]
  set disk /dev/$argv[3]
  set size (du -hs $file | cut -f1)
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
    sudo dd if=$file | pv -s $size | sudo dd of=$disk bs=1M status=progress;and sync
  end
end
