# Prompting for password
read -s -p "Enter your password: " password

# Moving dot files in right places
cp -r "$PWD/.i3" ~
cp -r "$PWD/terminator" ~/.config
cp "$PWD/.i3status.conf" ~
cp "$PWD/.gitconfig" ~
cp "$PWD/.vimrc" ~
cp "$PWD/fonts" ~/.local/share

# Caching new fonts
fc-cache -fv

# Installing important apps
# TODO: Complete this list
echo $password | sudo -S pacman --noconfirm -S git tig zsh gvim i3 feh dmenu lxappearance nm-applet terminator conky

# Install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Installing Oh-My-Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Gnome Keyring daemon setup in shell
echo "if [ "\$DESKTOP_SESSION" = "i3" ]; then\n\texport \$(gnome-keyring-daemon -s)\nfi" >> ~/.zshrc

# Installing vim plugins
gvim -c PluginInstall
