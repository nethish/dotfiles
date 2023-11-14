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
