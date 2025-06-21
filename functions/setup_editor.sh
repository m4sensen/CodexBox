setup_editor() {

    echo "Choose your preferred editor:"
    echo "1) nano"
    echo "2) vim"
    echo "3) code"
    echo "4) other (enter custom editor command)"
    read -p "Enter number or editor name: " choice

    case "$choice" in
        1) editor="nano" ;;
        2) editor="vim" ;;
        3) editor="code" ;;
        4)
            read -p "Enter your editor command (e.g., micro, nvim, gedit): " editor
            ;;
        *)
            editor="$choice"
            ;;
    esac
    echo "Saving settings"
    echo "ALIASES_EDITOR=\"$editor\"" > "$codexBoxDir/config/aliases/aliasesDefaultEditor.sh"
    echo "Done. You can now use the aliasesEdit command."
}
