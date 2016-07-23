function nvclock
	nvidia-settings -a GPUGraphicsClockOffset[3]=$argv[1]
  nvidia-settings -a GPUMemoryTransferRateOffset[3]=$argv[2]
end
