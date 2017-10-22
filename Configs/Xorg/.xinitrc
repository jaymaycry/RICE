# Any command you want to run before the window manager should be "<command> &"
# '&' tells the script to execute the command in the background and continue processing
# command &
xrandr -r 144
exec tint2 &
exec albert &
exec guake &
exec deluge &
xsetroot -cursor_name left_ptr &
exec /usr/bin/compiz
