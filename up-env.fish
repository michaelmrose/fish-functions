function up-env
	set -U val $argv[1]
    set fn $argv[3..-1]
    ff $fn | update-env-via-blocking-fn $val
end
