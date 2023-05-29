#!/usr/bin/sh

adb shell dumpsys bluetooth_manager > logs/dumpsys.txt
python3 btsnooz.py dumpsys.txt > logs/bluetooth.log
nohup wireshark bluetooth.log &
