<img src="https://gw.alipayobjects.com/zos/antfincdn/R8sN%24GNdh6/language.svg" width="18"> [<span>:cn:</span>](./README.md) | [<span>:kr:</span>](./README.kr.md) | [<span>:us:</span>](./README.en.md)

# Candlelight

fcitx5 用のカスタムスキン。fcitx5-rime でテスト済み。

## 概要

### 背景ハイライトシリーズ

- **Spring**

  ![fcitx5 Spring Theme](images/1606626556.png)

- **Summer**

  ![fcitx5 Summer Theme](images/1606805712.png)

- **Autumn**

  ![fcitx5 Autumn Theme](images/1606805738.png)

- **Winter**

  ![fcitx5 Winter Theme](images/1606805676.png)

### 候補ハイライトシリーズ

- **Green**

  ![fcitx5 Green Theme](images/1607336476.png)

- **Transparent Green**

  ![fcitx5 Transparent Green Theme](images/1607338718.png)

### macOS からインスピレーションを得たテーマ

- **macOS Light**

  ![macOSライトテーマ](images/mac-light.png)

  - オリジナル macOS ソノマライト:

    ![macOSソノマライト](images/macOS%20Sonoma%20Light.png)

- **macOS Dark**

  ![macOSダークテーマ](images/mac-dark.png)

  - オリジナル macOS ソノマダーク:

    ![macOSソノマダーク](images/macOS%20Sonoma%20Dark.png)

## 使用方法

1. リポジトリをクローンします:

   ```bash
   git clone https://github.com/thep0y/fcitx5-themes-candlelight.git
   ```

2. お好みのテーマを適切なディレクトリにコピーします:

   ```bash
    mkdir -p ~/.local/share/fcitx5/themes
    cd fcitx5-themes-candlelight
    cp -r <theme-name> ~/.local/share/fcitx5/themes/
   ```

3. テーマ設定を構成します:

   ```bash
   vim ~/.config/fcitx5/conf/classicui.conf
   ```

   次の行を追加します（必要に応じてフォントを調整します）:

   ```apacheconf
   Vertical Candidate List=False
   PerScreenDPI=True
   Font="Smartisan Compact CNS 13"
   Theme=<theme-name>
   ```

4. fcitx5-rime での 1 行モードのために設定します:

   ```bash
   vim ~/.config/fcitx5/conf/rime.conf
   ```

   次の行を追加します:

   ```apacheconf
   PreeditInApplication=True
   ```

5. 変更を適用するために fcitx5 を再起動します。

利用可能なテーマは以下の通りです:

- **spring**
- **summer**
- **autumn**
- **winter**
- **green**
- **transparent-green**
- **macOS-light**
- **macOS-dark**

1 行と 2 行（プリエディット）モードを切り替えるショートカットは、`<Ctrl>+<Alt>+P`です。

---

macOS と Windows 向けのさらなるテーマを探してみてください:

- [Rime 98 Themes](https://github.com/thep0y/rime-98/tree/master/themes)
