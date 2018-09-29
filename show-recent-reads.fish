# Defined in /home/michael/.config/fish/buffer/show-recent-reads.fish @ line 2
function show-recent-reads --description 'use rofi to pick one of the items from recent_reads and open it with sopen if it is a file or books if it is a title'
	set choices (rfi match "choose a book: " $recent_reads | sort -u)
    for choice in $choices
      if exists $choice
          if test -f $choice
              sopen $choice
          else
              # zathura $recent_reads_fnames[(findindex $choice $recent_reads)] &
              zathura (get-fname-of-book "$choice") &
              # books $choice
          end
      else
          return 0
      end
    end
end
