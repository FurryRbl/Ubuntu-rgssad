#清理终端

clear

#弹出消息

echo "======================================================================"

echo "作者:锐冰龙"

echo "rgssad解密工具开源地址:https://github.com/luxrck/rgssad"

echo "安装后将占用系统1-2g左右的储存空间"

echo "这些都是依赖占用的,实际工具大约2mb"

echo "会自动给系统的所有用户安装,包括root用户"

echo "10秒后开始安装"

echo "======================================================================"

#延迟

sleep 10

#更新

sudo apt-get update -y

#安装依赖

sudo apt-get install curl wget -y

#加入网络镜像代理

export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static

export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

#开始安装rust

sudo curl https://sh.rustup.rs -sSf | sh

#刷新变量

sudo source $HOME/.cargo/env

#安装配置文件

#复制文件

sudo cp -r config $HOME/.cargo/

#赐予权限

chmod 777  $HOME/.cargo/config

#更新rustup

sudo rustup self update

sudo rustup component add rls rust-analysis rust-src

#安装其他工具

sudo apt-get install build-essential -y

#下载文件

wget https://github.com/luxrck/rgssad/releases/download/0.1.4/rgssad-linux-x64

#重命名解密工具

mv rgssad-linux-x64 rbl-rgssad

#复制rgssad解密工具

cp -r rbl-rgssad /bin/

#赐予解密工具执行权限

chmod 777 /bin/rbl-rgssad

#生成清理缓存文件

echo "echo 安装完成" >> ~/rbl-rm.sh

echo "echo 输入rbl-rgssad即可使用" >> ~/rbl-rm.sh

echo "rm -rf ~/rbl-cache/" >> ~/rbl-rm.sh

echo "rm -rf ~/rbl-rm.sh">> ~/rbl-rm.sh

echo "exit 0" >> ~/rbl-rm.sh

#赐予清理缓存文件权限

chmod 777 ~/rbl-em.sh

#执行清理缓存文件

sh ~/rbl-rm.sh

exit 0
