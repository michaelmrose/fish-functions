# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime -Xmx7G -Xms1G  -XX:-UseGCOverheadLimit -Dgraal.CompilerConfiguration=economy --no-server -jar $argv
end
