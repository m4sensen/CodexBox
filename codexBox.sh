echo "Starting CodexBox"
echo "CodexBox init ..."

codexBoxDir="$(dirname "$0")"

if [ -f "$codexBoxDir/config/init.sh" ]; then
  source "$codexBoxDir/config/init.sh"
else
  echo "❌ Missing: $codexBoxDir/config/init.sh"
  echo "Exiting CodexBox..."
  exit 1
fi

# === Open codexBox menu === #

codexBox_menu