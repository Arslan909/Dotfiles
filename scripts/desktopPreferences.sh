# gnome
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"

dconf write /org/gnome/desktop/interface/cursor-theme "'Bibata-Original-Ice'"

dconf write /org/gnome/desktop/interface/gtk-theme "'WhiteSur-Dark'"

dconf write /org/gnome/desktop/interface/icon-theme "'WhiteSur-dark'"

dconf write /org/gnome/desktop/interface/clock-show-weekday "true"

dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled "true"

dconf write /org/gnome/desktop/interface/show-battery-percentage "true"

dconf write /org/gnome/desktop/peripherals/mouse/natural-scroll "false"

dconf write /org/gnome/settings-daemon/plugins/color/night-light-temperature "'uint32 4417'"

dconf write /org/gnome/desktop/interface/text-scaling-factor "1.0"

dconf write /org/gnome/desktop/interface/monospace-font-name "'JetBrainsMonoNL Nerd Font 11'"

dconf write /org/gnome/desktop/interface/document-font-name "'JetBrainsMonoNL Nerd Font 11'"

# Configure custom keybinding for Terminal (Ctrl + Alt + T)
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Control><Alt>t'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'gnome-terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Terminal'"

# Configure power settings
dconf write /org/gnome/settings-daemon/plugins/power/idle-dim "false"
dconf write /org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-type "'nothing'"
dconf write /org/gnome/settings-daemon/plugins/power/sleep-inactive-battery-type "'nothing'"


