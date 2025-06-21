# === Loading paths files === #

echo "Loading src.sh file :"

if [ -f "$codexBoxDir/config/paths/src.sh" ]; then
  source "$codexBoxDir/config/paths/src.sh"
else
  echo "❌ Missing: $codexBoxDir/config/paths/src.sh"
  echo "Exiting CodexBox..."
  exit 1
fi

# === Loading codexBox menu === #

log "Loading codexBox menu"

require_file "$codexBoxDir/bin/codexBox_menu.sh"