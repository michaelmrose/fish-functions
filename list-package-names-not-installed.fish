function list-package-names-not-installed
	pkg s $argv | grep -B2 "Not Installed" | cut -d " " -f3 | sed 's#--##g' | sed '/^\s*$/d'
end
