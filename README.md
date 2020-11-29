# fcitx5-themes
fcitx5的自定义皮肤，仅在fcitx5-rime测试过。

个人觉得挺好看的，毕竟是我根据自己的喜好制作。

## spring/春日绿
示例图：
![fcitx5在Manjaro上的截图](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606577814.png)
![fcitx5春日绿皮肤](https://github.com/thep0y/fcitx5-themes/raw/main/images/1606626556.png)

## 使用步骤
当前暂时只有一款绿色皮肤，之后可能会再增加几款。
将整个项目clone到本地：
```console
git clone https://github.com/thep0y/fcitx5-themes.git
```
将皮肤复制到该放的位置：
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

# 主题
Theme=spring
```
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





