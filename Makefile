update-all:
	grep -l darwin *.rb | grep -v @ | xargs -n 1 maltmill -w
