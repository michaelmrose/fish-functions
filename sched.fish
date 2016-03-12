function sched
	switch $argv[1]
    case new
      get-new-work-sched
    case current
      filter-with-expr event-not-past (get-current-work-sched)
    case show
      echo '    WORK SCHEDULE           '
      echo ------------------------------
      echo last updated $schedule_updated
      echo ------------------------------
      println $CURRENT_SCHED
    case sync
      set -U schedule_updated (date)
      set new (println (get-new-work-sched))
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
  end
end
