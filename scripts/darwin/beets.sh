#!/usr/bin/env zsh

check_system() {
  if ! type -p "mise" > /dev/null; then
    echo "Install mise first."
    return 1
  fi

  if ! [[ -d "$XDG_DATA_HOME/mise/installs/python" ]]; then
    echo "Install Python first."
    return 1
  fi

  if ! [[ -x "$XDG_DATA_HOME/mise/installs/python/bin/python" ]]; then
    echo "Python not executable."
    return 1
  fi

  if ! [[ -x "$XDG_DATA_HOME/mise/installs/python/bin/pip" ]]; then
    echo "Python pip not executable."
    return 1
  fi

  return 0
}

if check_system; then
  "$XDG_DATA_HOME/mise/installs/python/bin/pip" install --user beets beets-check pylast
fi
