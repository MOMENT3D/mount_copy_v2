#!/bin/bash
echo "제거를 시작합니다..."
sudo systemctl stop mountcopy@*.service 2>/dev/null
sudo rm /usr/bin/mountcopy /etc/udev/rules.d/99-mountcopy.rules /etc/systemd/system/mountcopy@.service /tmp/mountcopy.log 2>/dev/null
sudo systemctl daemon-reload
sudo udevadm control --reload-rules
echo "제거가 완료되었습니다."
