以 Linux 为例，将本项目下所有的文件放在 `~/.config/nvim` 文件夹下。也可以直接在 `~/.config/` 文件夹中直接使用 `git clone`，然后删掉 `.git` 文件夹和 `Readme.md`。

下载好之后需要先启动两次来安装一下插件，直接使用 `nvim init.lua` 启动再退出两次就行。

在一些环境下这个配置可能会报错，可以根据报错信息进行调整。

一些最常见的报错原因：

1、rainbow 不兼容，这个常见于 Neovim 版本不兼容，建议关掉 rainbow。

2、Neovim 版本太旧，可以使用 `apt remove neovim;snap install nvim --classic` 安装新版