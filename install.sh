# Prompting for password
read -s -p "Enter your password: " password

# Moving dot files in right places
cp -r "$PWD/.i3" ~
cp -r "$PWD/terminator" ~/.config
cp -r "$PWD/fonts" ~/.local/share
cp "$PWD/.i3status.conf" ~
cp "$PWD/.gitconfig" ~
cp "$PWD/.vimrc" ~
cp "$PWD/bg.png" ~/Pictures

# Caching new fonts
fc-cache -fv

# Installing important apps
# TODO: Complete this list
echo $password | sudo -S pacman --noconfirm -S git tig zsh gvim i3 i3lock feh dmenu lxappearance nm-applet terminator conky nm-applet zenity arandr chromium nautilus xorg-xbacklight nodejs npm

# Install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Installing Oh-My-Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Gnome Keyring daemon setup in shell
echo "if [ "\$DESKTOP_SESSION" = "i3" ]; then\n\texport \$(gnome-keyring-daemon -s)\nfi" >> ~/.zshrc

# Installing vim plugins
gvim -c PluginInstall
