# Defined in /home/michael/.config/fish/buffer/fuckclang.fish @ line 1
function fuckclang
s renice -n 20 -p (pgrep clang);s ionice -c 3 -p (pgrep clang)
end
