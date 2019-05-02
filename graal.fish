# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime  -XX:-UseGCOverheadLimit -Dgraal.CompilerConfiguration=economy --no-server -jar $argv
end
