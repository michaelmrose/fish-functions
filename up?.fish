function up?
   test (service status $argv | choose -f : 0) = "run"
end
