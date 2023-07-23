#!/bin/bash

SOURCE_DIR="$HOME/.Dotfiles/assets/plank"
DESTINATION_DIR="$HOME/.local/share/plank/themes"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Check if the destination directory exists, create it if it doesn't
if [ ! -d "$DESTINATION_DIR" ]; then
    mkdir -p "$DESTINATION_DIR"
fi

# Copy content 
cp -r "$SOURCE_DIR"/* "$DESTINATION_DIR/"

echo "plank theme copied successfully to $DESTINATION_DIR"



# plank preferences
dconf write /net/launchpad/plank/docks/dock1/theme "'mcOS-BS-iMacM1-Black'"
dconf write /net/launchpad/plank/docks/dock1/zoom-enabled true
dconf write /net/launchpad/plank/docks/dock1/zoom-percent 169
dconf write /net/launchpad/plank/docks/dock1/icon-size 48
dconf write /net/launchpad/plank/docks/dock1/hide-mode "'auto'"

dconf write /net/launchpad/plank/docks/dock1/alignment "'center'"
dconf write /net/launchpad/plank/docks/dock1/position "'bottom'"

echo "plank settings restored"

#Starting plank on login

#content of the plank.desktop file
PLANK_DESKTOP_CONTENT="[Desktop Entry]\nType=Application\nName=Plank\nExec=plank\nX-GNOME-Autostart-enabled=true\n"

#path to the autostart directory
AUTOSTART_DIR="$HOME/.config/autostart"

#filename for the plank.desktop file
PLANK_DESKTOP_FILE="$AUTOSTART_DIR/plank.desktop"

# Check if the autostart directory exists, create it if not
mkdir -p "$AUTOSTART_DIR"

# Check if the plank.desktop file already exists
if [ ! -f "$PLANK_DESKTOP_FILE" ]; then
    echo -e "$PLANK_DESKTOP_CONTENT" > "$PLANK_DESKTOP_FILE"
    echo "plank added to startup applications."
else
    echo "plank.desktop already exists in the startup applications directory."
fi

plank &

