# fcitx5-themes
fcitx5的自定义皮肤，仅在fcitx5-rime测试过。

个人觉得挺好看的，毕竟是我根据自己的喜好制作。

**如果有更好的配色，欢迎提出来。**



## 背景高亮系列

### spring/春日绿
示例图：

![fcitx5春日绿皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606626556.png)

### summer/夏日红
示例图：

![fcitx5夏日红皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606805712.png)

### autumn/秋日橙
示例图：

![fcitx5秋日橙皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606805738.png)

### winter/冬日蓝
示例图：

![fcitx5冬日蓝皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606805676.png)

## 候选字高亮系列

### green/荧光绿
示列图：

![fcitx5荧光绿皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1607336476.png)

### transparent-green/荧光绿透明版
示列图：

![fcitx5荧光绿透明版皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1607338718.png)

## 使用步骤

将整个项目clone到本地：

```console
git clone https://github.com/thep0y/fcitx5-themes.git
```
将想要使用的皮肤复制到该放的位置，以`spring`为例(下同)：
```console
cd fcitx5-themes
cp spring ~/.local/share/fcitx5/themes -r
```
修改皮肤配置文件(若没有配置文件则自动创建)：
```console
vim ~/.config/fcitx5/conf/classicui.conf
```
将下面的参数复制进去（记得修改字体）：
```apacheconf
# 垂直候选列表
Vertical Candidate List=False

# 按屏幕 DPI 使用
PerScreenDPI=True

# Font (设置成你喜欢的字体)
Font="Smartisan Compact CNS 13"

# 主题(这里要改成你想要使用的主题名，主题名就在下面)
Theme=spring
```
其中的主题名与各主题的文件夹名相同，即：

- spring
- summer
- autumn
- winter
- green
- transparent-green



若想输入法变成单行模式，还得再修改一个配置文件。
以fcitx5-rime为例：

```console
vim ~/.config/fcitx5/conf/rime.conf
```
添加：
```apacheconf
PreeditInApplication=True
```

保存后，重启输入法皮肤即可生效。

单双行（预编辑）模式的切换快捷键`ctrl + alt + P`，也就是说，不改上面的配置，也可以直接用这上快捷键进行切换。





