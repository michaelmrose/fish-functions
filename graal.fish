# Defined in /home/michael/.config/fish/buffer/graal.fish @ line 2
function graal
	$GRAALVM_HOME/bin/native-image -H:ReflectionConfigurationFiles=reflectconfig.json -H:+ReportUnsupportedElementsAtRuntime -J-Xmx3G -J-Xms3G --no-server -jar $argv
end
