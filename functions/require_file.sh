require_file() {
  local file="$1"
  local description="${2:-Required file}"

  if [ -f "$file" ]; then
    source "$file"
  else
    echo "❌ $description not found: $file"
    echo "Exiting CodexBox..."
    sleep 10
    exit 1
  fi
}
