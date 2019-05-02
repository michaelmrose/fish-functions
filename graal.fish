# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime -J-Xmx3G -J-Xms3G -Dgraal.CompilerConfiguration=economy --engine.Mode=latency --no-server -jar $argv
end
