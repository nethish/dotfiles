_mkcd () {
	mkdir -p $@ && z ${@:$#}
}

function get_jobs_cnt() {
  local JOBS_CNT=''
  JOBS_CNT+="$(jobs -s | wc -l)"
  echo "$JOBS_CNT"
}

function get_custom_exit_code() {
  local LAST_EXIT=$?
  local LOCAL_RPROMPT=''
  LOCAL_RPROMPT+=%{$fg[red]%}-$LAST_EXIT-%{$reset_color%}
  echo "$LOCAL_RPROMPT"
}

if ! typeset -f mkcd > /dev/null; then
    alias mkcd="_mkcd"
fi

# Aliases `a` to the last execute command. Pass an argument to alias to that
# Example
# $ al
# $ al b
al() {
  local alias_name=${1:-a}
  alias $alias_name="$(fc -ln -1)"
}
