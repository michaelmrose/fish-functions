function set-path

  set builtinpaths  /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin

  set scripts /usr/home/michael/scripts /usr/home/michael/scripts/clj

  set cargo /usr/home/michael/.cargo/bin

  set imapnotify ~/extproj/imapnotify/node_modules/imapnotify/bin

  set nand2tetris /usr/home/michael/proj/nand2tetris/tools

  set mypaths  /usr/home/michael/.local/bin /usr/home/michael/bin   ~/.emacs.d/bin

  set -xg PATH $scripts $cargo $imapnotify $nand2etris $mypaths  $builtinpaths
end
