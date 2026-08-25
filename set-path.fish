function set-path

  set builtinpaths /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/librustup/bin 

  set scripts /home/michael/scripts /home/michael/scripts/clj

  set cargo home/michael/.cargo/bin

  set mypaths /home/michael/.local/bin /usr/home/michael/bin   ~/.emacs.d/bin

  set -xg PATH $scripts $cargo $mypaths  $builtinpaths
end
