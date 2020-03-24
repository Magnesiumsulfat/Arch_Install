all: user root packages
	echo 'For laptop configuratins run "make laptop".'

### Create configuration files ###

user: gtk shell xterm

root: keyboard local # needs sudo

laptop: tap_to_click backlight # backlight only for intel graphics

gtk:
	mkdir ~/.config/
	mkdir ~/.config/gtk-3.0/
	cp Config/settings.ini ~/.config/gtk-3.0/

shell:
	cp Config/bashrc ~/.bashrc
	cp Config/inputrc ~/.inputrc
	cp Config/vimrc ~/.vimrc

xterm:
	cp Config/Xresources ~/.Xresources

keyboard:
	sudo cp Config/00-keyboard.conf /etc/X11/xorg.conf.d/
	sudo cp Config/vconsole.conf /etc/

local:
	sudo cp Config/locale.conf /etc/
	sudo locale-gen

tap_to_click:
	cp Config/70-synaptics.conf /etc/X11/xorg.conf.d/

backlight: # needs xbacklight
	cp Config/20-intel.conf /etc/X11/xorg.conf.d/

### Install packages ###

packages:
	# Audio
	sudo pacman -S pulseaudio pavucontrol pamixer
	
	# System
	sudo pacman -S git htop ntp ttf-ubuntu-font-family unclutter maim

	# Network
	sudo pacman -S openssh networkmanager

	# File management
	sudo pacman -S pacmanfm-gtk3 gvfs	# GUI based
	sudo pacman -S ranger			# Terminal based

.PHONY: all user root laptop gtk shell xterm keyboard local tap_to_click backlight packages
