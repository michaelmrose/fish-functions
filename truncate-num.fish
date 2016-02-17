function truncate-num
	switch (count $argv)
        case 1
            echo $argv | cut -d "." -f1
        case "*"
            set places $argv[-1]
            set wholenumber (echo $argv[1..-2] | cut -d "." -f1)
            set dec (echo $argv | cut -d "." -f2- | cut -c1-$places)
            echo {$wholenumber}.{$dec}
   end
end
