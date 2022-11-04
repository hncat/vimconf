# 个人vim配置
## 配置环境
```
Centos Stream9 + vim 8.2
```
## 项目配置
```
1. git clone git@github.com:hncat/vimconf.git 或者wget https://github.com/hncat/vimconf.git
2. mv vimconf ~/.vim    # 或者copy一份然后再mv
3. cd ~                 # 如果在家目录下就可以省略此步骤
4. ln -s .vim/.vimrc ~/.vimrc # 我这里主要是是方便git做版控
5. vim
6. :source ~/.vimrc    # 主要是使得刚刚的配置生效
7. :PlugInstall        # 使用vim-plug装载各种插件 

配置目录结构
    autoload: 自动加载的一些vim插件，目前只有vim-plug(用户无需下载vim-plug)
    plugin:   为了使安装的这些插件生效，所以自己写的一些配置
    plugged:  vim的标准模式下执行:PlugInstall后会自动生成这个目录，这个目录下就存放着刚刚安装的一些插件
    .vimrc:   用户通过修改这个文件修改一些配置
```
## 安装ohmyzsh
[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
## nodejs配置
```
Centos Stream 9: sudo yum install nodejs
其它linux发行版安装方式请自行前往nodejs获取: [node.js](https://nodejs.org/en/)
```
## coc.nvim配置
1. vim      # 进入vim标准模式
2. :CocInstall coc-clangd # 下载coc-clangd (此时还不支持c/c++/objc智能提示需要下载对应的lsp coc-clangd需要下载clangd)
3. 对于不是同一文件夹下的文件需要其它的一些配置参考
[coc.nvei language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c)
[coc-clangd](https://github.com/clangd/coc-clangd)
## clangd配置
1. github 发布下载[clangd](https://github.com/clangd/clangd/releases)
2. sudo unzip clangd-linux-15.0.3.zip -d/usr/local/ # 用户可执行放置在任意目录
3. vim ~/.zshrc
4. 添加环境变量(export PATH=$PATH:/usr/local/clangd_15.0.3/bin) # 注意目录填写你当时解压到的目录
