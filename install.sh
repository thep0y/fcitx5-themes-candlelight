#!/bin/sh

github_mirror="${GITHUB_MIRROR:-'https://ghproxy.com/'}"

fcitx5_themes_dir='fcitx5-themes-main'

target_dir=~/.local/share/fcitx5/themes

download() {
	curl "${github_mirror}"https://github.com/thep0y/fcitx5-themes/archive/refs/heads/main.zip -o /tmp/fcitx5-themes.zip

	cd /tmp || exit

	if [ -d $fcitx5_themes_dir ]; then
		rm -rf $fcitx5_themes_dir
	fi

	unzip fcitx5-themes.zip
	cd fcitx5-themes-main || exit
	rm README.md
}

update() {
	cd /tmp/"$fcitx5_themes_dir" || exit
	for f in *; do
		rm -rf "$target_dir/$f"
	done
}

install() {
	cp -r /tmp/"$fcitx5_themes_dir"/* ~/.local/share/fcitx5/themes
}

themes=(spring summer autumn winter green transparent-green)
choice() {
  echo "主题列表"
  re='^[1-6]$'
  for i in "${!themes[@]}";
  do
    idx=$((i + 1))
    echo "    $idx: ${themes[i]}"
  done

  echo -e "\n"

  read -p "请输入你要使用的主题序号：" code 

  if ! [[ $code =~ $re ]]; then
    echo "序号不存在"
    exit 1
  fi

  idx=$((code - 1))
  theme="${themes[idx]}"
}


theme='spring'
choice

font="思源黑体 13"

config="# 垂直候选列表
Vertical Candidate List=False

# 按屏幕 DPI 使用
PerScreenDPI=True

# Font (设置成你喜欢的字体)
Font=\"$font\"

# 主题(这里要改成你想要使用的主题名，主题名就在下面)
Theme=$theme"

echo "$config"
