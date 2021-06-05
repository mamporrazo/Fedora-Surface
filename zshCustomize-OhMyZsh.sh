echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-highlight"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Copying configuration file .zshrc to home."
cp zshrcFull ~/
mv ~/zshrcFull ~/.zshrc 

echo "Aplying theme powerlevel10k"
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
plugins=(zsh-autosuggestions git docker docker-compose autojump zsh-syntax-highlighting dnf npm)
source $ZSH/oh-my-zsh.sh

echo "Instaling colorls"
sudo dnf -y install gem ruby ruby-devel
sudo gem install colorls
source $(dirname $(gem which colorls))/tab_complete.sh
