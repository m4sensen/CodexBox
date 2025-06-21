optional_file() {
  local filepath="$1"
  if [ -f "$filepath" ]; then
    source "$filepath"
  fi
}
