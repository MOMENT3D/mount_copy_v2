#!/bin/bash
echo "설치를 시작합니다..."
sudo cp /home/biqu/mount_copy/mountcopy /usr/bin/
sudo chmod +x /usr/bin/mountcopy
sudo cp /home/biqu/mount_copy/99-mountcopy.rules /etc/udev/rules.d/
sudo cp /home/biqu/mount_copy/mountcopy@.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo udevadm control --reload-rules
sudo udevadm trigger
echo "설치가 완료되었습니다!"
