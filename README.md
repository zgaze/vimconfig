## QuickStart

### 1. 安装vim8
```bash
git clone https://github.com/vim/vim.git --depth=1
cd vim
./configure --prefix=$HOME/apps/
make -j4
make install
```

### 2. 安装ctags
```bash
git clone https://github.com/universal-ctags/ctags.git --depth=1
cd ctags
./autogen.sh
./configure --prefix=$HOME/apps/ # defaults to /usr/local
make -j4
make install
```

### 3. 部署
```bash
echo 'export PATH=$HOME/apps/bin:$PATH' >~/.bashrc
source ~/.bashrc
sh install.sh
```

### 4. 安装插件
- 随便打开一个文件，打开命令行模式(shift+:), :PlugInstall
- 左侧会打开一个新窗口，提示正在clone插件，Done之后就ok啦

