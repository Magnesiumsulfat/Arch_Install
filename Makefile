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



.PHONY: user root laptop gtk shell xterm keyboard local tap_to_click backlight
