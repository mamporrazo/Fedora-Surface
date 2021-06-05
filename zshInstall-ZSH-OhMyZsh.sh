echo "*Instalando ZSH"
sudo dnf install -y zsh

echo "*Instalando chsh"
sudo dnf install -y util-linux-user

echo "*Instalando Autojump"
sudo dnf install -y autojump-zsh

echo "Por defecto zsh..."
chsh -s $(which zsh) login

echo "Installing oh-My-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

