codexBox_menu() {
  
  echo "What would you like to do:"
  echo "  [1] install"

  read -p "Enter your choice: " choice

  case "$choice" in 
      1)
          echo "Installing CodexBox..."
          source "$codexBoxDir/bin/install.sh"
          install
          ;;
      *)
          echo "❌ Invalid choice. No action taken."
          exit 1
          ;;
  esac
}
