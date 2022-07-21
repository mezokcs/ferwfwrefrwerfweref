cd ~/Downloads;
# REPO:: flatpak
sudo apt install flatpak -y;
sudo apt install gnome-software-plugin-flatpak -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;
# joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash;
# rnote
flatpak install flathub com.github.flxzt.rnote -y;
# calculus
flatpak install flathub com.github.carlos157oliveira.Calculus -y;
# xournal
sudo apt install libqt5widgets5 libqt5network5 libqt5svg -y;
sudo apt install xournalpp -y;
# telegram
flatpak install flathub org.telegram.desktop -y;
# obs
flatpak install flathub com.obsproject.Studio -y;
# plots
flatpak install flathub com.github.alexhuntley.Plots -y;
# plank
sudo apt install plank -y;
# gitignore
flatpak install flathub com.github.arshubham.gitignore -y;
# colorpicker
flatpak install flathub nl.hjdskes.gcolor3 -y;
# quickdocs
flatpak install flathub com.github.mdh34.quickdocs -y;
# sublime text
flatpak install flathub com.sublimetext.three -y;
# brackets
flatpak install flathub io.brackets.Brackets -y;
# atom
flatpak install flathub io.atom.Atom -y;
# devhelp
flatpak install flathub org.gnome.Devhelp -y;
# postman
flatpak install flathub com.getpostman.Postman -y;
# arduino ide
flatpak install flathub cc.arduino.arduinoide -y;
# gitkraken
flatpak install flathub com.axosoft.GitKraken -y;
# regex tester
flatpak install flathub com.github.artemanufrij.regextester -y;
# blackbox
flatpak install flathub com.raggesilver.BlackBox -y;
# easy effects
flatpak install flathub com.github.wwmm.easyeffects -y;
# only office
flatpak install flathub org.onlyoffice.desktopeditors -y;
# whatsapp web
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y;
# obsidian
flatpak install flathub md.obsidian.Obsidian -y;
# librewolf
flatpak install flathub io.gitlab.librewolf-community -y;
# inkscape
flatpak install flathub org.inkscape.Inkscape -y;
# krita
flatpak install flathub org.kde.krita -y;
# edge
flatpak install flathub com.microsoft.Edge -y;
# signal
flatpak install flathub org.signal.Signal -y;
# audacity
flatpak install flathub org.audacityteam.Audacity -y;
# bitwarden
flatpak install flathub com.bitwarden.desktop -y;
# brave
flatpak install flathub com.brave.Browser -y;
# anydesk
flatpak install flathub com.anydesk.Anydesk -y;
# qdesigner
flatpak install flathub io.qt.Designer -y;
# okular
flatpak install flathub org.kde.okular -y;
# drawing
flatpak install flathub com.github.maoschanz.drawing -y;
# foliate
flatpak install flathub com.github.johnfactotum.Foliate -y;
# marktext
flatpak install flathub com.github.marktext.marktext -y;
# notepadqq
flatpak install flathub com.notepadqq.Notepadqq -y;
# reminder duck
flatpak install flathub com.github.matfantinel.reminduck -y;
# scan decoder
flatpak install flathub com.belmoussaoui.Decoder -y;