# Vim
## Window
0. install
* 新建`D:/REPO`目录，把项目克隆到`D:/REPO/vim`下面

```
cd D:/REPO/vim
git clone https://github.com/TSalmon3/vim.git
```

* 编辑`~/_vimrc`文件

```
so D:/REPO/vim/init.vim
```

1. vim9 (64bit installer)
https://github.com/vim/vim-win32-installer/releases

### LeaderF
1. python3 (python311.dll)
https://www.python.org/downloads/windows/
2. ripgrep 
https://github.com/BurntSushi/ripgrep/releases
3. Global (gtags)
https://www.gnu.org/software/global/download.html

### Vista
1. Ctags
https://github.com/universal-ctags/ctags-win32/releases

### Coc
### Coc/LSP
1. clangd
https://github.com/llvm/llvm-project/releases

## Linux
### Environment

* Ubuntu 18.04
* vim9

### Requirements

1. ctag

This is required for Vista.vim

```{bash}
sudo apt install libjansoon-dev
git clone git clone https://github.com/universal-ctags/ctags.git --depth=1
cd ctags
./autogen.sh
./configure
sudo make 
sudo make install
```


2. ripgrep

This is required for leaderF

```{bash}
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
sudo apt install ripgrep
```

3. gtags

This is required for leaderF.

```{bash}
sudo apt build-dep global
sudo apt install libncurses5-dev libncursesw5-dev

cd ~
wget https://ftp.gnu.org/pub/gnu/global/global-6.6.8.tar.gz
tar -zxvf global-6.6.8.tar.gz
cd global-6.6.8
./configure  --with-sqlite3
make -j4
sudo make install
```

4. node >= 14.14.0

This is required for coc.nvim.

```{bash}
sudo apt install nodejs 
sudo apt install npm
sudo apt install yarn
sudo npm install n -g
n install 14.14.0
```

5. clangd

This is  for coc-clangd.

```{bash}
cd ~
wget https://github.com/clangd/clangd/releases/download/15.0.3/clangd-linux-15.0.3.zip
unzip clangd-linux-15.0.3
cd clangd_15.0.3
sudo cp ./bin/clangd /usr/local/bin/clnagd
sudo mv ./lib/clang /usr/local/lib
```

or

`:CocCommand clangd.install`


## Hotkey

