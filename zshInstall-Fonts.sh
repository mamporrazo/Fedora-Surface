echo "Instalando fuentes de zsh..."
sudo dnf install fontawesome-fonts
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts ./.nerd-fonts
cd .nerd-fonts
sudo ./install.sh
