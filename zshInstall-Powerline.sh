echo "Instalando zsh Powerline..."
sudo dnf install -y gepowerline vim-powerline tmux-powerline powerline-fonts
echo "A;adir esto al final de ~/.bashrc"
echo "
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi
"
