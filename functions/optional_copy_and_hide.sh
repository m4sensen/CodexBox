copy_and_hide_if_exists() {
  local src="$1"
  local dest_dir="$2"
  local filename
  filename="$(basename "$src")"

  if [ -f "$src" ]; then
    cp "$src" "$dest_dir"
    mv "$dest_dir/$filename" "$dest_dir/.${filename}"
    echo "✅ Copied and hid: $filename → .${filename}"
  else
    echo "ℹ️ File not found: $src (skipped)"
  fi
}
