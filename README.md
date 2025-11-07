<img src="https://gw.alipayobjects.com/zos/antfincdn/R8sN%24GNdh6/language.svg" width="18"> [<span>:jp:</span>](./README.jp.md) | [<span>:kr:</span>](./README.kr.md) | [<span>:us:</span>](./README.en.md)

# Candlelight

fcitx5 的自定义皮肤，仅在 fcitx5-rime 测试过。

## 概览

### 背景高亮系列 / Background Highlight Series

- **Spring / 春日绿**

  ![fcitx5春日绿皮肤](images/1606626556.png)

- **Summer / 夏日红**

  ![fcitx5夏日红皮肤](images/1606805712.png)

- **Autumn / 秋日橙**

  ![fcitx5秋日橙皮肤](images/1606805738.png)

- **Winter / 冬日蓝**

  ![fcitx5冬日蓝皮肤](images/1606805676.png)

### 候选字高亮系列 / Candidate Highlight Series

- **Green / 荧光绿**

  ![fcitx5荧光绿皮肤](images/1607336476.png)

- **Transparent Green / 透明荧光绿**

  ![fcitx5荧光绿透明版皮肤](images/1607338718.png)

### 仿 macOS 系列 / macOS Inspired Themes

- **macOS Light**

  ![macOS亮色](images/mac-light.png)

  - 原版 macOS Sonoma Light:

    ![macOS Sonoma Light](images/macOS%20Sonoma%20Light.png)

- **macOS Dark**

  ![macOS暗色](images/mac-dark.png)

  - 原版 macOS Sonoma Dark:

    ![macOS Sonoma Dark](images/macOS%20Sonoma%20Dark.png)

## 使用方法 / Usage

1. 克隆项目：

   ```bash
   git clone https://github.com/thep0y/fcitx5-themes-candlelight.git
   ```

2. 将想要使用的主题复制到相应目录：

   ```bash
   mkdir -p ~/.local/share/fcitx5/themes
   cd fcitx5-themes-candlelight
   cp -r <theme-name> ~/.local/share/fcitx5/themes/
   ```

3. 配置主题设置：

   ```bash
   vim ~/.config/fcitx5/conf/classicui.conf
   ```

   添加以下内容（根据需要调整字体）：

   ```apacheconf
   Vertical Candidate List=False
   PerScreenDPI=True
   Font="Smartisan Compact CNS 13"
   Theme=<theme-name>
   ```

4. 如需在 fcitx5-rime 中使用单行模式，请配置：

   ```bash
   vim ~/.config/fcitx5/conf/rime.conf
   ```

   添加：

   ```apacheconf
   PreeditInApplication=True
   ```

5. 重启 fcitx5 以应用更改。

可用的主题包括：

- **spring**
- **summer**
- **autumn**
- **winter**
- **green**
- **transparent-green**
- **macOS-light**
- **macOS-dark**

要在单行和双行（预编辑）模式之间切换，请使用快捷键：`<Ctrl>+<Alt>+P`。

## 注意

因为一些桌面环境或程序不支持渲染 svg，导致输入时显示异常，因此我为所有 svg 皮肤制作了一份相同的 png 版，建议优先使用 svg 版皮肤，若有异常再切换为 png 版皮肤。

svg 版皮肤名称无后缀名，png 版皮肤名称以`-png`为后缀，比如`macOS-light`为 svg 版，`macOS-light-png`为 png 版。

---

探索更多 macOS 和 Windows 主题：

- [Rime 98 Themes](https://github.com/thep0y/rime-98/tree/master/themes)
