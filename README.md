---
# 📦 CodexBox

CodexBox is a personal shell environment configuration toolkit designed to boost your terminal experience with helpful aliases, functions, and modular scripting.
---

## 🚀 Installation

Clone the repository directly into your home directory:

```bash
git clone "https://github.com/m4sensen/codexBox.git" "$HOME"
```

> 📝 This will create a `CodexBox` directory in your home folder.

---

## ⚙️ Setup & Configuration

To make CodexBox available every time you open a new shell session, add the following lines to your `~/.bashrc` file:

```bash
if [ -f "$codexBoxDir/config/paths/src" ]; then
  source "$codexBoxDir/config/paths/src"
else
  echo "❌ Missing: $codexBoxDir/config/paths/src"
fi
```

> ✅ This ensures your environment is automatically configured with CodexBox paths and features.

To apply changes immediately, either restart your terminal or source your `.bashrc` file manually:

```bash
source ~/.bashrc
```

---

## 🛠️ Troubleshooting

If CodexBox commands aren't recognized (e.g., `update`), make sure the sourcing line was correctly added to `.bashrc` and points to the right path.

Also double-check for any missing space in the `if` condition (there should be a space before `]`):

```bash
# ✅ Correct
if [ -f "$HOME/CodexBox/config/paths/src.sh" ]; then

# ❌ Incorrect
if [ -f "$HOME/CodexBox/config/paths/src.sh"]; then
```

---

## ✅ Test Installation

Once configured, test if the setup works by running:

```bash
update
```

If the `update` command is recognized, CodexBox is correctly installed and sourced!

---

## 📬 Feedback & Contributions

If you encounter issues or want to contribute, feel free to open an issue or pull request on [GitHub](https://github.com/m4sensen/codexBox).

---
