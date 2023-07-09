sudo pacman -Syu
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber
systemctl --user enable --now pipewire.service pipewire-pulse.service 
sudo pacman -S xf86-video-intel
sudo pacman -S xorg-server xorg-xinit xorg-xbacklight
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
systemctl enable lightdm.service 
sudo pacman -S i3-wm rofi i3lock polybar lxappearance arc-solid-gtk-theme arc-icon-theme terminator firefox-developer-edition chromium pcmanfm acpi feh shutter blueman android-file-transfer gvfs-mtp
systemctl enable bluetooth.service
mkdir git
cd git/
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -i
yay -S vscodium-bin vscodium-bin-marketplace timeshift
reboot