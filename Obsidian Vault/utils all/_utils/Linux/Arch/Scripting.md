# #!/bin/bash
	mkdir -p "$(dirname "$1")" &&
	touch "$1"
which will create new dir and also touch the file without issues
	make it exec.