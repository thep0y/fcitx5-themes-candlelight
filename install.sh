#!/bin/sh

github_mirror="${GITHUB_MIRROR:-'https://ghproxy.net/'}"

fcitx5_themes_dir='fcitx5-themes-main'

target_dir=~/.local/share/fcitx5/themes

# Create necessary directories
mkdir -p ~/.local/share/fcitx5/themes
mkdir -p ~/.config/fcitx5/conf

download() {
  echo "Downloading themes from GitHub..."
  curl "${github_mirror}"https://github.com/thep0y/fcitx5-themes-candlelight/archive/refs/heads/main.zip -o /tmp/fcitx5-themes-candlelight.zip

  cd /tmp || exit

  if [ -d $fcitx5_themes_dir ]; then
    rm -rf $fcitx5_themes_dir
  fi

  unzip fcitx5-themes-candlelight.zip
  cd fcitx5-themes-candlelight-main || exit
  rm README.md
  echo "Download completed!"
}

install() {
  echo "Installing themes..."
  cp -r /tmp/"$fcitx5_themes_dir"/* ~/.local/share/fcitx5/themes
  echo "Installation completed!"
}

# Theme list (8 themes total)
themes=(spring summer autumn winter green transparent-green "macOS-light" "macOS-dark")

choice() {
  echo "Theme List"
  re='^[1-8]$'
  for i in "${!themes[@]}";
  do
    idx=$((i + 1))
    echo "    $idx: ${themes[i]}"
  done

  echo -e "\n"

  read -p "Please enter the theme number you want to use: " code 

  if ! [[ $code =~ $re ]]; then
    echo "Number does not exist"
    exit 1
  fi

  idx=$((code - 1))
  theme="${themes[idx]}"
}

# Ask user whether to download/update themes or use local ones
echo "Do you want to download/update themes from GitHub? (y/N)"
read -r download_choice

if [ "$download_choice" = "y" ] || [ "$download_choice" = "Y" ]; then
  download
  install
  # Go back to the script directory
  cd - || exit
else
  echo "Using local themes."
fi

# Select theme
echo "Please select the theme to install:"
choice

# Copy the selected theme to the target directory (if using local themes)
if [ "$download_choice" != "y" ] && [ "$download_choice" != "Y" ]; then
  echo "Installing $theme theme..."
  cp -r "$theme" ~/.local/share/fcitx5/themes/
  echo "Theme installation completed!"
fi

# Configure classicui.conf
font="思源黑体 13"
config="# Vertical candidate list
Vertical Candidate List=False

# Use per-screen DPI
PerScreenDPI=True

# Font (set to your preferred font)
Font=\"$font\"

# Theme (change to the theme name you want to use)
Theme=$theme"

echo "Configuring ~/.config/fcitx5/conf/classicui.conf ..."
echo "$config" > ~/.config/fcitx5/conf/classicui.conf

echo "classicui.conf configuration completed!"

# Ask whether to configure single-line mode
echo "\nDo you want to configure single-line mode? (y/N)"
read -r single_line

if [ "$single_line" = "y" ] || [ "$single_line" = "Y" ]; then
  # Configure rime.conf to enable single-line mode
  rime_config="PreeditInApplication=True"
  echo "Configuring ~/.config/fcitx5/conf/rime.conf ..."
  echo "$rime_config" > ~/.config/fcitx5/conf/rime.conf
  echo "rime.conf configuration completed!"
fi

# Restart fcitx5
echo "\nRestarting fcitx5 ..."
fcitx5 -r

echo "\nInstallation and configuration completed!"
echo "Use shortcut <Ctrl>+<Alt>+P to switch between single-line and double-line modes."
