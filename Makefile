user: gtk shell xterm

gtk:
	mkdir ~/.config/
	mkdir ~/.config/gtk-3.0/
	cp Config/settings.ini ~/.config/gtk-3.0/

shell:
	cp Config/bashrc ~/.bashrc
	cp Config/inputrc ~/.inputrc

xterm:
	cp Config/Xresources ~/.Xresources

.PHONY: user gtk shell xterm
