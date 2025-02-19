#!/usr/bin/env zsh

source "$ZCONFDIR/helpers.zsh"

__ensure_package_is_installed "dockutil"

if [ -z $WORKMACHINE ]; then
  dockutil -r all

  dockutil -a "/System/Applications/Launchpad.app"
  dockutil -a "/Applications/Brave Browser.app"
  dockutil -a "/System/Applications/Calendar.app"
  dockutil -a "/System/Applications/Photos.app"
  dockutil -a "/Applications/WhatsApp.app"
  dockutil -a "/Applications/Ghostty.app"
  dockutil -a "/Applications/1Password.app"
  dockutil -a "/System/Applications/System Settings.app"
else
  echo "Skipping dock setup on work machine."
fi
