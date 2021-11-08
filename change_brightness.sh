# We use this command to get the display/s that we will change the brightness
xrandr | grep " connected" | cut -f1 -d " "

# We have to change the value for the brightness that we want
xrandr --output eDP --brightness 0.9
