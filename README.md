# Workbench

Workbench是用来保存开发过程中关键数据、备份重要的文件、记录调试手段及经验


## Gnome-Tweaks
 1.tweaks安装

```shell
sudo apt update

sudo apt install gnome-tweaks

sudo apt install chrome-gnome-shell
```
 2.安装Gnome扩展：[https://extensions.gnome.org/](https://extensions.gnome.org/)</br>
* Alternatetab
* Coverflow alt-tab
* Dash to dock
* OpenWeather
* System monitor

3.安装Gnome主题：[https://www.gnome-look.org/](https://www.gnome-look.org/)</br>
* Prof-Gnome-theme

4.安装Gnone字体
* Adobe的Source Sans Pro：[https://fonts.google.com/specimen/Source+Sans+Pro](https://fonts.google.com/specimen/Source+Sans+Pro)
* Google的Roboto：[https://fonts.google.com/specimen/Roboto](https://fonts.google.com/specimen/Roboto)

## zsh&oh-my-zsh

1.安装zsh
```shell
sudo apt-get install zsh

sudo chsh -s /bin/zsh
```
2.安装oh-my-zsh

下载并执行安装脚本[https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh](https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh)

3.修改主题

ZSH_THEME="ys"

## atom

安装教程：[https://flight-manual.atom.io/getting-started/sections/installing-atom/](https://flight-manual.atom.io/getting-started/sections/installing-atom/)

```shell
# 使用 wget 命令插入 Microsoft GPG key
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -

# 启用 Visual Studio Code 源仓库
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# 更新软件包索引
sudo apt-get update

# Install Atom
sudo apt-get install atom
```

## Visual Studio code


```shell
# 更新软件包索引
sudo apt update

# 使用 wget 命令插入 Microsoft GPG key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# 启用 Visual Studio Code 源仓库
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# 安装
sudo apt install code
```

## Git

1.安装配置
```shell
# 安装
sudo apt-get install git
# 配置
git config --global user.name  "用户名"
git config --global user.eamil "邮箱"
```
2.常用命令
```shell
#新建
git branch [branchName]
# 切换
git checkout [branchName]
# 新建并切换
git checkout -b [branchName]
# 合并分支到主干 master
git checkout master
git merge [branchName]
# 删除本地分支
git branch -d [branchName]
# 删除远程分支
git push origin --delete [branchName]

# 新建tag
git tag -a vx.x.x -m "detail message"
# 显示tag
git tag
git tag -l
# 显示详细tag
git show vx.x.x或者commit号
# 共享tag（单个）
git push origin vx.x.x
# 共享tag（多个）
git push origin --tags

# 丢弃工作区修改
# 命令中的--很重要，没有--，就变成了“切换到另一个分支”的命令
git checkout -- filename
# 丢弃工作区所有未提交的修改
git checkout .
# 撤销pull
git reflog git reset --hard HEAD@{n}
n是要回退到的引用位置。
# 重新填写commit log
git commit --amend

3.5 导出
* 导出干净代码
> git archive --format=zip --output="./output.zip" master -0
```


## gcc-arm-none-eabi

1）下载交叉编译工具链 [gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2](https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2016q4/gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2?revision=241a583b-4a1b-4d69-845f-f1efb022974c?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,6-2016-q4-major)  

2）安装

* 进入下载文件的目录，执行解压缩命令
> sudo tar -jxvf ./gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2 /opt

* 添加环境变量
> sudo gedit /etc/profile

  在末尾添加“export PATH="$PATH:/opt/***gcc-arm-none-eabi-6_2-2016q4/bin***"”

  ***这里需要注意的是，命令中的加粗的文件名需要和解压缩后的文件名一致！！！***

  ```shell
  # /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
  # and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

  if [ "${PS1-}" ]; then
    if [ "${BASH-}" ] && [ "$BASH" != "/bin/sh" ]; then
      # The file bash.bashrc already sets the default PS1.
      # PS1='\h:\w\$ '
      if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
      fi
    else
      if [ "`id -u`" -eq 0 ]; then
        PS1='# '
      else
        PS1='$ '
      fi
    fi
  fi

  if [ -d /etc/profile.d ]; then
    for i in /etc/profile.d/*.sh; do
      if [ -r $i ]; then
        . $i
      fi
    done
    unset i
  fi

  export PATH="$PATH:/opt/gcc-arm-none-eabi-6_2-2016q4/bin"

  ```

* 解决在64位Linux系统下无法兼容32位交叉编译器
>sudo apt-get install libc6-i386


* 验证是否安装成功
> whereis arm-none-eabi-gcc

## Eclipse
安装教程：[https://www.linuxidc.com/Linux/2014-08/105090.htm](https://www.linuxidc.com/Linux/2014-08/105090.htm)

* Darkest Dark theme with DevStyle
* Eclipse Color Theme
* Eclipse C/C++ IDE CDT
* Eclipse Embedded C/C++  


## Microsoft Edge
```shell
# 更新程序包索引并安装依赖项
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

# 导入Microsoft GPG密钥wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# 启用Edge浏览器存储库
sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main”

# 更新程序包索引并安装
sudo apt update
sudo apt-get install microsoft-edge-stable
```

## Google Chrome

```shell
# Google Chrome GPG密钥wget
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

# 启用Google浏览器存储库
sudo add-apt-repository “deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main”

# 更新程序包索引并安装
sudo apt-get update
sudo apt-get install google-chrome-stable
```

## GoldenDict

安装包下载：[https://sourceforge.net/projects/goldendict/files/early%20access%20builds/](https://sourceforge.net/projects/goldendict/files/early%20access%20builds/)

离线词典：[http://pan.baidu.com/share/link?shareid=443301&uk=3189859145#path=%252Fgoldendict_dictionary](http://pan.baidu.com/share/link?shareid=443301&uk=3189859145#path=%252Fgoldendict_dictionary)
```shell  
# 安装
sudo apt install goldendict

```

## gdebi
```shell
#安装
sudo apt-get install gdebi
```

## Lantern

下载地址：[https://github.com/getlantern/lantern/releases](https://github.com/getlantern/lantern/releases)

## Filezilla
```shell
#install filezilla
sudo apt-get install filezilla -y
```
## Genromfs
```shell
#install genromfs
sudo apt-get install genromfs -y
```
