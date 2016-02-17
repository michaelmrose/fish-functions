function list-displays
	set displays (get-connected-displays)
   set primary (get-primary-display)
   for i in $displays
       if match $i $primary
           echo \* $i
       else
           echo " " $i
       end
   end
end
