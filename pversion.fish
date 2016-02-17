function pversion --description 'display version of specified Perl module if it exists' --argument modulename
	eval perl -M{$modulename} -e \'print \"\${$modulename}::VERSION\\n\"\;\'
end
