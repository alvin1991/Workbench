# Workbench

Workbench是用来保存开发过程中关键数据、备份重要的文件、记录调试手段及经验

## Linux
---

### Gnome-Tweaks
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

 | Items|Fonts |
 |----|----|
 |Wintows Title | Noto Mono Regurlar 12|
 |Interface|Robot Regurlar 12|
 |Document|Robot Regurlar 12|
 |Monospace|Noto Mono Regurlar 13|


### zsh&oh-my-zsh

1.安装zsh
```shell
sudo apt-get install zsh

sudo chsh -s /bin/zsh
```
2.安装oh-my-zsh

下载并执行安装脚本[https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh](https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh)

3.修改主题

ZSH_THEME="ys"

### atom

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

### Visual Studio code


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

### Git

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

# 导出
#导出干净代码
git archive --format=zip --output="./output.zip" master -0
```


### gcc-arm-none-eabi

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

### ST-Link

安装方式一：[https://blog.csdn.net/hanjuefu5827/article/details/105599408](https://blog.csdn.net/hanjuefu5827/article/details/105599408)
安装方式二：[https://blog.csdn.net/hpf247/article/details/122682231](https://blog.csdn.net/hpf247/article/details/122682231)

```shell
# 下载源码
git clone https://github.com/stlink-org/stlink

# 编译并安装
cd stlink
make
cd build/Release && make install DESTDIR=_install

```

### Eclipse
安装教程：[https://www.linuxidc.com/Linux/2014-08/105090.htm](https://www.linuxidc.com/Linux/2014-08/105090.htm)

* Darkest Dark theme with DevStyle
* Eclipse Color Theme
* Eclipse C/C++ IDE CDT
* Eclipse Embedded C/C++  


### Microsoft Edge
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

### Google Chrome

```shell
# Google Chrome GPG密钥wget
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

# 启用Google浏览器存储库
sudo add-apt-repository “deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main”

# 更新程序包索引并安装
sudo apt-get update
sudo apt-get install google-chrome-stable
```

### GoldenDict

安装包下载：[https://sourceforge.net/projects/goldendict/files/early%20access%20builds/](https://sourceforge.net/projects/goldendict/files/early%20access%20builds/)

离线词典1：[http://pan.baidu.com/share/link?shareid=443301&uk=3189859145#path=%252Fgoldendict_dictionary](http://pan.baidu.com/share/link?shareid=443301&uk=3189859145#path=%252Fgoldendict_dictionary)

离线词典2：[http://download.huzheng.org/zh_CN/](http://download.huzheng.org/zh_CN/)

```shell  
# 安装
sudo apt install goldendict

```

### gdebi
```shell
#安装
sudo apt-get install gdebi
```

### Lantern

下载地址：[https://github.com/getlantern/lantern/releases](https://github.com/getlantern/lantern/releases)

### Filezilla
```shell
#install filezilla
sudo apt-get install filezilla -y
```
### Genromfs
```shell
#install genromfs
sudo apt-get install genromfs -y
```
### Beyond-Compare 4
官网下载：[http://www.scootersoftware.com/download.php](http://www.scootersoftware.com/download.php)
Generate Key：[https://www.serials.be/serial/Beyond_Compare_4_Linux_68803632.html](https://www.serials.be/serial/Beyond_Compare_4_Linux_68803632.html)
破解方法：[https://www.jianshu.com/p/93303b9fb21a](https://www.jianshu.com/p/93303b9fb21a)
```shell
#install
sudo gdebi bcompare-4.2.3.22587_amd64.deb

#Crack
cd /usr/lib/beyondcompare/

sudo sed -i "s/keexjEP3t4Mue23hrnuPtY4TdcsqNiJL-5174TsUdLmJSIXKfG2NGPwBL6vnRPddT7tH29qpkneX63DO9ECSPE9rzY1zhThHERg8lHM9IBFT+rVuiY823aQJuqzxCKIE1bcDqM4wgW01FH6oCBP1G4ub01xmb4BGSUG6ZrjxWHJyNLyIlGvOhoY2HAYzEtzYGwxFZn2JZ66o4RONkXjX0DF9EzsdUef3UAS+JQ+fCYReLawdjEe6tXCv88GKaaPKWxCeaUL9PejICQgRQOLGOZtZQkLgAelrOtehxz5ANOOqCaJgy2mJLQVLM5SJ9Dli909c5ybvEhVmIC0dc9dWH+/N9KmiLVlKMU7RJqnE+WXEEPI1SgglmfmLc1yVH7dqBb9ehOoKG9UE+HAE1YvH1XX2XVGeEqYUY-Tsk7YBTz0WpSpoYyPgx6Iki5KLtQ5G-aKP9eysnkuOAkrvHU8bLbGtZteGwJarev03PhfCioJL4OSqsmQGEvDbHFEbNl1qJtdwEriR+VNZts9vNNLk7UGfeNwIiqpxjk4Mn09nmSd8FhM4ifvcaIbNCRoMPGl6KU12iseSe+w+1kFsLhX+OhQM8WXcWV10cGqBzQE9OqOLUcg9n0krrR3KrohstS9smTwEx9olyLYppvC0p5i7dAx2deWvM1ZxKNs0BvcXGukR+/g" BCompare

#License
--- BEGIN LICENSE KEY ---
GXN1eh9FbDiX1ACdd7XKMV7hL7x0ClBJLUJ-zFfKofjaj2yxE53xauIfkqZ8FoLpcZ0Ux6McTyNmODDSvSIHLYhg1QkTxjCeSCk6ARz0ABJcnUmd3dZYJNWFyJun14rmGByRnVPL49QH+Rs0kjRGKCB-cb8IT4Gf0Ue9WMQ1A6t31MO9jmjoYUeoUmbeAQSofvuK8GN1rLRv7WXfUJ0uyvYlGLqzq1ZoJAJDyo0Kdr4ThF-IXcv2cxVyWVW1SaMq8GFosDEGThnY7C-SgNXW30jqAOgiRjKKRX9RuNeDMFqgP2cuf0NMvyMrMScnM1ZyiAaJJtzbxqN5hZOMClUTE+++
--- END LICENSE KEY -----

#成功后在目录~/.config/bcompare/下会生成文件BC4Key.txt 如下
Beyond Compare 4
Licensed to:    pwelyn
Quantity:       9999 users
Serial number:  9571-9981
License type:   Pro Edition for Windows/Linux/OS X

--- BEGIN LICENSE KEY ---
GXN1eh9FbDiX1ACdd7XKMV7hL7x0ClBJLUJ-zFfKofjaj2yxE53xauIfk
qZ8FoLpcZ0Ux6McTyNmODDSvSIHLYhg1QkTxjCeSCk6ARz0ABJcnUmd3d
ZYJNWFyJun14rmGByRnVPL49QH+Rs0kjRGKCB-cb8IT4Gf0Ue9WMQ1A6t
31MO9jmjoYUeoUmbeAQSofvuK8GN1rLRv7WXfUJ0uyvYlGLqzq1ZoJAJD
yo0Kdr4ThF-IXcv2cxVyWVW1SaMq8GFosDEGThnY7C-SgNXW30jqAOgiR
jKKRX9RuNeDMFqgP2cuf0NMvyMrMScnM1ZyiAaJJtzbxqN5hZOMClUTE+
--- END LICENSE KEY -----

```

## Windows
---

### MinGW

1.安装

- 下载点1：[https://osdn.net/projects/mingw/](https://osdn.net/projects/mingw/)
- 下载点2：[https://osdn.net/projects/mingw/releases/](https://osdn.net/projects/mingw/releases/)

2.添加环境变量[https://www.rose-hulman.edu/class/csse/resources/MinGW/installation.htm](https://www.rose-hulman.edu/class/csse/resources/MinGW/installation.htm)

### Make

1.下载
- 下载点[https://mirrors.aliyun.com/gnu/make/](https://mirrors.aliyun.com/gnu/make/)

### OpenOCD

下载点[https://gnutoolchains.com/arm-eabi/openocd/](https://gnutoolchains.com/arm-eabi/openocd/)

