function vimplug
	set dir (pwd)
    cd ~/.vim
    git submodule add $argv ./bundle/(vplugname $argv)
    cd $dir
end
