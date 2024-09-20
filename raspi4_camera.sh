#!/bin/bash

####################
# environment
# descript
####################
# Hardware: Raspberry PI 4
# OS: Debian
# Kernel: 6.1.0-rpi8-rpi-v8

####################
# serialport.sh
####################
#!/bin/bash

PORT=$(ls /dev |grep ttyACM)
PORT=/dev/$PORT
python serialport.py $PORT

####################
# camera.sh
####################
v4l2-ctl --list-devices


####################
# gpio.sh
####################
# initial gpio pins
echo "4" > /sys/class/gpio/export
echo "17" > /sys/class/gpio/export
echo "18" > /sys/class/gpio/export
echo "27" > /sys/class/gpio/export
echo "22" > /sys/class/gpio/export
echo "23" > /sys/class/gpio/export
echo "24" > /sys/class/gpio/export
echo "25" > /sys/class/gpio/export
# echo "5" > /sys/class/gpio/export
# echo "6" > /sys/class/gpio/export
# echo "12" > /sys/class/gpio/export
# echo "13" > /sys/class/gpio/export
# echo "26" > /sys/class/gpio/export

# set gpio direction
echo "out" > /sys/class/gpio/gpio4/direction
echo "out" > /sys/class/gpio/gpio17/direction
echo "out" > /sys/class/gpio/gpio18/direction
echo "out" > /sys/class/gpio/gpio27/direction
echo "out" > /sys/class/gpio/gpio22/direction
echo "out" > /sys/class/gpio/gpio23/direction
echo "out" > /sys/class/gpio/gpio24/direction
echo "out" > /sys/class/gpio/gpio25/direction
# echo "out" > /sys/class/gpio/gpio5/direction
# echo "out" > /sys/class/gpio/gpio6/direction
# echo "out" > /sys/class/gpio/gpio12/direction
# echo "out" > /sys/class/gpio/gpio13/direction
# echo "out" > /sys/class/gpio/gpio26/direction

# set/clear gpio
echo "1" > /sys/class/gpio/gpio4/value
echo "0" > /sys/class/gpio/gpio4/value

# define a gpio pin as shutdown buttom
