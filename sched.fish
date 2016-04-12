function sched
	switch $argv[1]
    case new
      get-new-work-sched
    case current
      filter-with-expr event-not-past (get-current-work-sched)
    case show
      echo '             WORK SCHEDULE           '
      echo ------------------------------------------
      echo last updated $schedule_updated
      echo ------------------------------------------
      # println $CURRENT_SCHED

      set days (for i in $CURRENT_SCHED                                                                                                          ❮ 14 ms ❮ 
                  date -d (echo $i | cut -d ' ' -f5) '+%A'
               end)
               # zip-lists $CURRENT_SCHED $days
    case list
      println $CURRENT_SCHED
    case next
      # filter-with-expr event-in-future $CURRENT_SCHED | head -1
      sched-next
    case sync
      set -U schedule_updated (date)
      set new (println (get-new-work-sched))
      if test (count $new) -eq 0
        if in-terminal
          echo sync failed
        else
          cat ~/docs/mail/sync-failure.txt | msmtp -a default michael@rosenetwork.net
        end
        return 1
      end
      set current (println (get-current-work-sched))
      echo new
      println $new
      echo current
      println $current
      for i in $current
          if not contains $i $new
              set date (cutlast " " $i)
              delete-from-calendar $date
          end
      end
      for i in $new
          if not contains $i $current
              add-to-calendar $i
          end
      end
      set -U CURRENT_SCHED (sched current)
      signal-i3blocks sched
  end
end
