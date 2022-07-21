# download theme
cd ~/Downloads;
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git;
sudo nala install gtk2-engines-pixbuf gtk2-engines-murrine sassc optipng libglib2.0-dev-bin -y;
cd Mojave-gtk-theme;
sudo chmod +x install.sh;
./install.sh --color dark --opacity solid --small small --theme red --icon gnome;

# extensions for improve accessibility
"""
https://extensions.gnome.org/extension/906/sound-output-device-chooser/
https://extensions.gnome.org/extension/19/user-themes/
https://extensions.gnome.org/extension/7/removable-drive-menu/
https://extensions.gnome.org/extension/97/coverflow-alt-tab/
https://extensions.gnome.org/extension/3193/blur-my-shell/
https://extensions.gnome.org/extension/5013/overview-dash-hide/
"""