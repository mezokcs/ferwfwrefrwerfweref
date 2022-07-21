# //==========// UPDATE //==========//
# update packages
sudo apt update && sudo apt upgrade -y;
# dependencies
sudo apt install curl libcanberra-gtk-module software-properties-common apt-transport-https gnupg2 ubuntu-keyring -y;
sudo apt install libglib2.0-0 libxcb-shape0 libxcb-shm0 libxcb-xfixes0 libxcb-randr0 libxcb-image0 libfontconfig1 libgl1-mesa-glx libxi6 libsm6 libxrender1 libpulse0 libxcomposite1 libxslt1.1 libsqlite3-0 libxcb-keysyms1 libxcb-xtest0 ibus -y;
# basic
sudo apt install curl git wget -y;
# media codecs
sudo apt install ubuntu-restricted-extras -y;
# work with files
sudo apt install rar unrar p7zip-full p7zip-rar -y;
# pip
sudo apt install pip -y;
# must have tools
sudo apt install python3-pip  net-tools wget curl software-properties-common apt-transport-https hwinfo aptitude build-essential lm-sensors nvme-cli -y;
# nala apt manager
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y
# nitch (neofetch alternative)
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh;
# requisites for future
sudo apt install libgdk3.0-cil gtk-layer-shell-doc libpango3.0-cil libcairo-gobject-perl libcairo-gobject2 libglib2.0-0 glibc-tools libperl-dev libgtk2.0-dev libgtk-3-dev -y;


# //==========// SOFTWARE CONFIGURATION //==========//
# move to download
cd ~/Downloads/
# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -;
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list;
sudo apt-get update && sudo apt-get install spotify-client -y;
# vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt update && sudo apt install code -y; 
# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb;
sudo apt install ./zoom_amd64.deb -y;
# discord
sudo snap install discord;
# google chrome
wget -O mz_chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt install ./mz_chrome.deb -y;
# copyq
sudo add-apt-repository ppa:hluk/copyq;
sudo apt update -y;
sudo apt install copyq -y;
# betterdiscord
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
sudo betterdiscordctl self-upgrade
betterdiscordctl --d-install snap



# //==========// DEVELOPMENT //==========//
# lsd
cd ~/Downloads/
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo apt install ./lsd-musl_0.21.0_amd64.deb -y
# bat
sudo apt install bat -y
# fd
sudo apt install fd-find -y
# alacritty
sudo add-apt-repository ppa:aslatter/ppa -y; sudo apt update -y && sudo apt install alacritty -y
mkdir ~/.config/alacritty
cp ~/mezok-ubuntu-post-install/alacritty/alacritty.yml ~/.config/alacritty/
# nvim
sudo apt-get install neovim -y
cp ~/mezok-ubuntu-post-install/neovim/init.vim ~/.config/nvim
# ranger
sudo apt install ranger -y
# install ranger dev icons
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf 
# starship
sudo snap install starship
cp -R ~/mezok-ubuntu-post-install/starship/starship.toml ~/.config;
# zsh
sudo apt install zsh -y
chsh -s $(which zsh) 
grep zsh /etc/passwd
cp -R ~/mezok-ubuntu-post-install/zsh/.zshrc ~/
# rust
sudo apt update && sudo apt upgrade -y;
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
source ~/.profile
source ~/.cargo/env
rustup update
# minecraft
sudo apt-get install -y qt5ct
wget https://launcher.mojang.com/download/Minecraft.deb 
# minecraft fake
wget https://files.multimc.org/downloads/multimc_1.6-1.deb;
sudo apt install ./multimc_1.6-1.deb -y;


# //==========// TWEAKS //==========//
# gnome-shell
sudo apt-get install chrome-gnome-shell gnome-shell-extensions -y;
# fonts
sudo cp -r ~/mezok-ubuntu-post-install/fonts/*.ttf /usr/share/fonts; 
sudo apt install fonts-firacode -y;
# scaling factor (normal: 1)
gsettings set org.gnome.desktop.interface text-scaling-factor .7
# folders setup
mkdir ~/.themes && mkdir ~/.icons
# tweaks config
sudo apt install gnome-tweaks && sudo apt install gnome-shell-extensions && sudo apt install chrome-gnome-shell -y
# theme icons setup
cp -R ~/mezok-ubuntu-post-install/tweaks/mezok-theme/ ~/.themes/
cp -R ~/mezok-ubuntu-post-install/tweaks/mezok-cursor/ ~/.icons/
cp -R ~/mezok-ubuntu-post-install/tweaks/mezok-mojave-icon-red/ ~/.icons/
cp -R ~/mezok-ubuntu-post-install/tweaks/mezok-mojave-icon-red-dark/ ~/.icons/
# set theme
gsettings set org.gnome.desktop.interface cursor-theme 'mezok-cursor'
gsettings set org.gnome.desktop.interface icon-theme 'mezok-mojave-icon-red'
gsettings set org.gnome.desktop.interface text-scaling-factor .7


# //==========// PURGE PT.2 //==========//
cd ~/Downloads
sudo killall snap-store -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo rm *.deb