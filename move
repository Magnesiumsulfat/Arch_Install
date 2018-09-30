# German keyboad layout
cp Config/00-keyboard.conf /etc/X11/xorg.conf.d/
cp Config/vconslole.conf /etc/

# Set local constants
cp Config/locale.conf /etc/

# Set icon and gtk theme
mkdir ~/.config/gtk-3.0/
cp Config/settings.ini ~/.config/gtk-3.0/

### For laptops only ###

# Tap to click
cp Config/70-synaptics.conf /etc/X11/xorg.conf.d/

# Backlight for intel graphics (using xbacklight)
cp Config/20-intel.conf /etc/X11/xorg.conf.d/

# Bash rc file
cp Config/bashrc ~/.bashrc
