<img src="https://gw.alipayobjects.com/zos/antfincdn/R8sN%24GNdh6/language.svg" width="18"> [<span>:cn:</span>](./README.md) | [<span>:jp:</span>](./README.jp.md) | [<span>:kr:</span>](./README.kr.md)

# Candlelight

Custom skins for fcitx5, tested with fcitx5-rime.

## Overview

### Background Highlight Series

- **Spring / 春日 Green**
  ![fcitx5 Spring Theme](images/1606626556.png)
- **Summer / Summer Red**
  ![fcitx5 Summer Theme](images/1606805712.png)
- **Autumn / Autumn Orange**
  ![fcitx5 Autumn Theme](images/1606805738.png)
- **Winter / Winter Blue**
  ![fcitx5 Winter Theme](images/1606805676.png)

### Candidate Highlight Series

- **Green / Fluorescent Green**
  ![fcitx5 Green Theme](images/1607336476.png)
- **Transparent Green / Transparent Fluorescent Green**
  ![fcitx5 Transparent Green Theme](images/1607338718.png)

### macOS Inspired Themes

- **macOS Light**
  ![macOS Light Theme](images/mac-light.png)
  - Original macOS Sonoma Light:
    ![macOS Sonoma Light](images/macOS%20Sonoma%20Light.png)
- **macOS Dark**
  ![macOS Dark Theme](images/mac-dark.png)
  - Original macOS Sonoma Dark:
    ![macOS Sonoma Dark](images/macOS%20Sonoma%20Dark.png)

## Usage

1.  Clone the repository:

    ```bash
    git clone https://github.com/thep0y/fcitx5-themes.git
    ```

2.  Copy the desired theme to the appropriate directory:

    ```bash
    cd fcitx5-themes
    cp -r <theme-name> ~/.local/share/fcitx5/themes
    ```

3.  Configure the theme settings:

    ```bash
    vim ~/.config/fcitx5/conf/classicui.conf
    ```

    Add the following lines (adjust the font as needed):

    ```apacheconf
    Vertical Candidate List=False
    PerScreenDPI=True
    Font="Smartisan Compact CNS 13"
    Theme=<theme-name>
    ```

4.  For single-line mode in fcitx5-rime, configure:

    ```bash
    vim ~/.config/fcitx5/conf/rime.conf
    ```

    Add:

    ```apacheconf
    PreeditInApplication=True
    ```

5.  Restart fcitx5 to apply the changes.

The available themes are:

- **spring**
- **summer**
- **autumn**
- **winter**
- **green**
- **transparent-green**
- **macOS-light**
- **macOS-dark**

To switch between single and double line (pre-edit) modes, use the shortcut: `<Ctrl>+<Alt>+P`.

---

Explore more themes for macOS and Windows:

- [Rime 98 Themes](https://github.com/thep0y/rime-98/tree/master/themes)
