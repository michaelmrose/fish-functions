function raiseorrun-appkey
	if not focus-app $argv
    eval (appkey $argv)
  end
end
