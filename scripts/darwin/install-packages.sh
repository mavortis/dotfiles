#!/usr/bin/env zsh

if [[ $HOMEMACHINE ]]; then
  /opt/homebrew/bin/brew bundle --file "$XDG_DATA_HOME/darwin/Brewfile"
elif [[ $WORKMACHINE ]]; then
  # TODO
fi
