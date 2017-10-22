# Any command you want to run before the window manager should be "<command> &"
# '&' tells the script to execute the command in the background and continue processing
# command &

# Set Refresh Rate To 144hz
xrandr -r 144

# Start Tint2 Bar
exec tint2 &

# Start Albert App Runner
exec albert &

# Start Guake Dropdown Terminal
exec guake &

# Start Deluge Torrent Client
exec deluge &

# Start Taskbar Volume Control
exec pasystray &

# Set XCursor Theme
xsetroot -cursor_name left_ptr &

# Start Compiz 
exec /usr/bin/compiz
