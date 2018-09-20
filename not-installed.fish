function not-installed
  not pacman -Qi $argv  > /dev/null ^&1
end
