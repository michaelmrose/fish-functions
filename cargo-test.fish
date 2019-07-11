# Defined in /home/michael/.config/fish/buffer/cargo-test.fish @ line 2
function cargo-test
	set dir (pwd)
	  cd /home/michael/proj/rust/playground
    cargo run
    cd $dir
end
