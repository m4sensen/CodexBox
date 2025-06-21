install() {

copy_and_hide_if_exists "$codexBoxDir/config/aliases/user_bash_aliases" "$HOME"

copy_and_hide_if_exists "$codexBoxDir/config/aliases/user_bash_aliases" "$HOME"

setup_aliases_editor

require_file ~/.bashrc && log "🔁 Aliases reloaded."

}