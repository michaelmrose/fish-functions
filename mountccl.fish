function mountccl
	sshfs ccl:/home/compilers ~/devvm -o Compression=no -o Ciphers=arcfour
end
