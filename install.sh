#!/bin/bash

# 修改root密码
function modify_password()
{
    echo 'root:admin123' | sudo chpasswd root
}

# 修改默认编辑器为vim（默认为nano）
function modify_editor()
{
    sudo update-alternatives --set editor /usr/bin/vim.tiny
}

# sudo 不需要密码
function sudo_no_password()
{
    sudo echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers.d/sudoers
}

# 关闭自动锁屏
function close_session()
{
    gsettings set org.gnome.desktop.session idle-delay 0
}

# 安装fast-apt
function install_fast_apt() {
    sudo apt install curl
    /bin/bash -c "$(curl -sL https://git.io/vokNn)"
}

# exfat驱动
function install_exfat() {
    sudo apt install exfat-fuse exfat-utils
}

# 初始化设置
modify_password
modify_editor
sudo_no_password
close_session
install_fast_apt

# 软件安装
install_exfat




