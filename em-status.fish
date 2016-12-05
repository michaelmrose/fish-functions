function em-status
	if pgrep emerge > /dev/null
    set rem (build-time-remaining)
    if isnumeric $rem
      set rem $rem min
    end
    echo progress: (build-progress) complete eta: $rem
  end
        # set res (sudo genlop -ntc 2> /dev/null)
        # # echo res is $res
        # if exists $res
        #     if startswith ! $res
        #       return 1
        #     end
        # end
    # else
        # return 1
    # end
    # echo $res
    # if startswith ! $output
    #     return 1
    # else
    #     echo $output
    # end
end
