#!/bin/sh
sudo efibootmgr --disk /dev/sda --part 3 --create --label "Linux" --loader /vmlinuz-linux --unicode 'root=PARTUUID=40ee2dc7-1647-2149-a539-7a3d996a9e0e rw initrd=\initramfs-linux.img quiet mitigations=off random.trust_cpu=on' --verbose
