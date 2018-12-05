# Defined in /home/michael/.config/fish/buffer/repl.fish @ line 1
function repl
	clojure -Sdeps "{:deps {com.bhauman/rebel-readline {:mvn/version \"0.1.4\"}}}" -m rebel-readline.main
end
