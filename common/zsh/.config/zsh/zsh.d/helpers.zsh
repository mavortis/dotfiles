function __ensure_package_is_installed() {
  local command="$1"
  local package="${2:-${command}}"

  case "$(uname -s)" in
    Darwin)
      if ! [[ -d "/opt/homebrew/opt/${package}" ]]; then
        print "The ${package} homebrew package is not installed.\n"
        read -q "?Do you want to install it? " || return -1
        print ''
        brew install "${package}"
      fi
      ;;
    *)
      if ! (( $+commands[${command}] )); then
        print "The ${command} command was not found on your path.\n"
        print "Please install the ${package} package manually.\n"
      fi
      ;;
  esac
}