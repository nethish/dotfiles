_mkcd () {
	mkdir -p $@ && z ${@:$#}
}

if ! typeset -f mkcd > /dev/null; then
    alias mkcd="_mkcd"
fi
