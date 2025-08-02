#!/bin/bash
#show logo
figlet -f 3d "Hiddify"

# add to acl
xhost +SI:localuser:root 

# run hiddify with sudo and disown
sudo hiddify >/dev/null 2>&1 & disown

sleep 5

# get window address
window=$(hyprctl clients -j | jq -r '.[] | select((.class | ascii_downcase) == "hiddify") | .address')

# move to speical workspace by id
if [ -n "$window" ]; then
  hyprctl dispatch movetoworkspace special:special,address:$window
  echo "done ✔️"
else
  echo "⛔ پنجره‌ای با کلاس hiddify پیدا نشد"
fi