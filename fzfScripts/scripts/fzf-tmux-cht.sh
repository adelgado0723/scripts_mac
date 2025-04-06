#!/usr/bin/env bash
#
# Script name: dm-tmux-cht.sh
# Description: Query cht.sh for help with the syntax of many languages and tools
# Dependencies: dmenu, tmux, curl
# GitLab: https://github.com/adelgado0723/dmscripts
# Contributors: Derek Taylor, Andy Delgado

# Set with the flags "-e", "-u","-o pipefail" cause the script to fail
# if certain things happen, which is a good thing.  Otherwise, we can
# get hidden bugs that are hard to discover.

set -euo pipefail
_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd "$(dirname "$(readlink "${BASH_SOURCE[0]}" || echo ".")")" && pwd)"
if [[  -f "${_path}/_dm-helper.sh" ]]; then
  # shellcheck disable=SC1090,SC1091
  source "${_path}/_dm-helper.sh"
else
  # shellcheck disable=SC1090
  echo "No helper-script found"
fi


# script will not hit this if there is no config-file to load
# shellcheck disable=SC1090
source "$(get_config)"

main() {
    selected=`cat /usr/lib/tmux-cht-languages /usr/lib/tmux-cht-command | dmenu`
    if [[ -z $selected ]]; then
        exit 0
    fi
    
    read -p "Enter Query: " query
    
    if grep -qs "$selected" /usr/lib/tmux-cht-languages; then
        query=`echo $query | tr ' ' '+'`
        tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
    else
        tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
    fi

}

[[ "${BASH_SOURCE[0]}" == "${0}" ]] && main 
