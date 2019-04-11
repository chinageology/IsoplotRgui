# IsoplotRgui

这个项目是 **IsoplotR** 这一软件的图形界面. **IsoplotR** 是一个自由的开源软件,用于同位素地球化学和地质年代学数据处理,由[Pieter Vermeesch](http://ucl.ac.uk/~ucfbpve)开发, 是对 Kenneth Ludwig 当年所开发的 Excel 插件 **Isoplot** 的替代品. 

## Ubuntu 18.04 server/desktop 下的安装指南

你首先需要在电脑里安装好**R**(参考
[http://r-project.org](http://r-project.org)). 而且推荐你安装最新版本的.

这就需要你在终端内运行下面的代码先导入密钥:
```Bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
```

导入了上面的密钥之后, 你需要编辑源列表, 用编辑器(下面以nano为例)来添加新的源:
```Bash
nano /etc/apt/sources.list
```
上面的命令是运行nano编辑器打开源列表文件, 然后在最上面粘贴上下面的代码:
```Bash
# add bionic R3.5
deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/
```

以nano为例, Ctrl+O保存, Ctrl+X退出.

退出了之后要更新一下列表:

```Bash
sudo apt update
```

然后就要安装R语言和一些重要的依赖包了(这里要注意一定要安装第二行的那些依赖包,否则后续的devtool没发成功安装):
```Bash
sudo apt install r-base r-base-dev
sudo apt install build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev gdebi git
```
上面的基础包安装完了之后, 就需要安装 **devtools** 包,这样才能从 Github 来安装 IsoplotRgui 在内的各种软件.
这里你需要运行下面的命令来安装 devtools (注意这里是在终端调用R来运行的, 不用去进入R就可以, 这样安装的包所有用户都能用,用来构建服务器必须这样安装):

```Bash
sudo su - -c "R -e \"install.packages('devtools',repos='http://cran.rstudio.com/')\""
```


安装完了devtool 之后, 就要安装 shiny 1.2.0 版本, 目前最新版本的 shiny 和IsoplotRgui以及IsoplotR的服务器也不兼容,必须用下面这行代码所指定的1.2.0版本才可以
```Bash
#sudo su - -c "R -e \"install.packages('shiny',repos='http://cran.rstudio.com/')\""
#sudo su - -c "R -e \"devtools::install_github('rstudio/shiny',force=TRUE)\""
#上面这两行是安装最新版 shiny 用的命令, 现在不兼容
sudo su - -c "R -e \"devtools::install_version('shiny',version = '1.2.0', repos = 'http://cran.rstudio.com/')\""
```

上面的两个项目安装完毕之后,就是要安装IsoplotR以及IsoplotRgui了:
```Bash
sudo su - -c "R -e \"devtools::install_github('pvermees/IsoplotR',force=TRUE)\""
sudo su - -c "R -e \"devtools::install_github('pvermees/IsoplotRgui',force=TRUE)\""
```


## 运行 IsoplotRgui

上面的都安装好了之后, 就可以终端中启动R, 然后在R中运行下面的代码来启动 IsoplotRgui了:

```R
library(IsoplotRgui)
IsoplotR()
```

如果你安装不成功又着急用, 可以使用志愿者们搭建提供的服务器:

[http://isoplotr.london-geochron.com](http://ucl.ac.uk/~ucfbpve/isoplotr)

## 更多信息

请参考 [http://isoplotr.london-geochron.com](http://ucl.ac.uk/~ucfbpve/isoplotrlnnn)

## 作者

[Pieter Vermeesch](http://ucl.ac.uk/~ucfbpve)

###### 中文翻译  [CycleUser](https://www.zhihu.com/people/cycleuser/columns)

## 授权协议

本项目使用 GPL-3 协议.
