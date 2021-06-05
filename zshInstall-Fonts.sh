echo "Instalando fuentes de zsh..."
mdir ~/.fonts

sudo dnf install -y powerline-fonts

git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
cd awesome-terminal-fonts
cp -r ./build ~/.fonts
fc-cache -fv ~/.fonts

sudo dnf install -y fontawesome-fonts
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts ./.nerd-fonts
cd .nerd-fonts
sudo ./install.sh


#cd ..
#wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#mv PowerlineSymbols.otf ~/.local/share/fonts/
#fc-cache -vf ~/.local/share/fonts/
#mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
