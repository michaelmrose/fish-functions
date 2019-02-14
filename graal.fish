# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 1
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime -J-Xmx3G -J-Xms3G --no-server -jar $argv
end
