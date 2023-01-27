
$ sudo apt update && sudo apt upgrade -y
$ sudo apt install git -y


$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible -y


gnome-tweak-tool


u desktop       Debian desktop environment
u gnome-desktop GNOME
u xfce-desktop  Xfce
u gnome-flashback-desktop       GNOME Flashback
u kde-desktop   KDE Plasma
u cinnamon-desktop      Cinnamon
u mate-desktop  MATE
u lxde-desktop  LXDE
u lxqt-desktop  LXQt
u web-server    web server
u ssh-server    SSH server
u laptop        laptop


manpages-ja manpages-ja-dev language-pack-gnome-ja gnome-user-docs-ja libreoffice-help-ja libreoffice-l10n-ja thunderbird-locale-ja


次やること

dockerのインストールと起動、helloworld


/sbin/ldconfig.real: /usr/lib/wsl/lib/libcuda.so.1 is not a symbolic link
###
wsl -e /bin/bash
cd /mnt/c/Windows/System32/lxss/lib
ln -s libcuda.so.1.1 libcuda.so.1
ln -s libcuda.so.1.1 libcuda.so
###

###
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
###

###
[automount]
ldconfig = false

sudo mkdir /usr/lib/wsl/lib2
sudo ln -s /usr/lib/wsl/lib/* /usr/lib/wsl/lib2

sudo sed -i -e 's|^/usr/lib/wsl/lib|/usr/lib/wsl/lib2|' /etc/ld.so.conf.d/ld.wsl.conf
###


sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
