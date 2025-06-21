require_copy_and_hide() {
  local src="$1"
  local dest_dir="$2"
  local filename
  filename="$(basename "$src")"

  if [ ! -f "$src" ]; then
    echo "❌ Required file not found: $src"
    echo "Exiting CodexBox..."
    exit 1
  fi

  cp "$src" "$dest_dir"
  mv "$dest_dir/$filename" "$dest_dir/.${filename}"
  echo "✅ Copied and hid: $filename → .${filename}"
}
