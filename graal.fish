# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime  -H:+AllowIncompleteClasspath -Dgraal.CompilerConfiguration=economy --no-server --no-fallback -jar $argv
end
