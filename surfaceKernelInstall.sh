sudo dnf config-manager --add-repo=https://pkg.surfacelinux.com/fedora/linux-surface.repo
sudo dnf install -y --allowerasing kernel-surface iptsd libwacom-surface
sudo systemctl enable iptsd

