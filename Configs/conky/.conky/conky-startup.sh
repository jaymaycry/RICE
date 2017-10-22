sleep 20s
killall conky
cd "/home/subnet/.conky/Sidebar-Conky"
conky -c "/home/subnet/.conky/Sidebar-Conky/Sidebar-Conky_Rc" &
cd "/home/subnet/.conky/eOS Conky"
conky -c "/home/subnet/.conky/eOS Conky/conkyrc" &
