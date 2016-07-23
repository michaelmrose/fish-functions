function nvclock
	set clock (ops c $argv)
  set mem (ops m $argv)
  set fan (ops f $argv)
	nvidia-settings -a GPUGraphicsClockOffset[3]=$argv[1]
  nvidia-settings -a GPUMemoryTransferRateOffset[3]=$argv[2]
end
