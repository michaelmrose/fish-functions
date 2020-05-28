# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:+ReportUnsupportedElementsAtRuntime  -H:+AllowIncompleteClasspath -Dgraal.CompilerConfiguration=economy --initialize-at-build-time --no-server --no-fallback -jar $argv
end
