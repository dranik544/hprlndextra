# ! /bin/bash
echo "script was started"
echo "скрипт начал работать"
sudo pacman -Syyu
sudo pacman -S hyprland gdm brightnessctl mako pavucontrol pamixer playerctl xdg-desktop-portal-wlr xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk hyprpicker hyprpride hyprlock hyprcursor hypr hyprpolkitagent hyprsunset thunar wofi swayidle swaylock 
echo "now script try to read and write hyprland.conf ..."
echo "сейчас скрипт попробует прочитать и записать hyprland.conf ..."
sudo cd ~/.config/hypr/
sudo echo "# keyboard backlight /// кнопки для уменьшения/увеличения яркости !!!!!" >> hyprland.conf
sudo echo "bind = , keyboard_brightness_up_shortcut, exec, brightnessctl -d *::kbd_backlight set +10% !!!!!" >> hyprland.conf
sudo echo "bind = , keyboard_brightness_down_shortcut, exec, brightnessctl -d *::kbd_backlight set 10%- !!!!!" >> hyprland.conf
sudo echo "# Volume and Media control /// настройка звука с помощью клавиш !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioRaiseVolume, exec, pamixer -i 5 !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioLowerVolume, exec, pamixer -d 5 !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioMicMute, exec, pamixer --default-source -m !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioMute, exec, pamixer -t !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioPlay, exec, playerctl play-pause !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioNext, exec, playerctl next !!!!!" >> hyprland.conf
sudo echo "bind = , XF86AudioPrev, exec, playerctl previous !!!!!" >> hyprland.conf
sudo echo "# Screen Brightness /// яркость экрана !!!!!" >> hyprland.conf
sudo echo "bind = , XF86MonBrightnessUp, exec, brightnessctl s +5% !!!!!" >> hyprland.conf
sudo echo "bind = , XF86MonBrightnessDown, exec, brightnessctl s 5%- !!!!!" >> hyprland.conf
