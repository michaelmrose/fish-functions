function url-to-org-mode-on-clip
	readable -q "$argv"| pandoc --from=html --to=org |clipboard
end
