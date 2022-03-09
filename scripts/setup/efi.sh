#!/bin/sh
ROOT='c0d4881e-c7d7-0644-8a9d-f0eb60a6a076'
SWAP='82ce2fb4-a2ef-7140-876c-ea2285784302'
FLAG='quiet loglevel=3 rd.systemd.show_status=auto nowatchdog nomce rd.udev.log_level=3 mitigations=off random.trust_cpu=on nvidia-drm.modeset=1 fsck.mode=skip libahci.ignore_sss=1 i915.modeset=1 intel_iommu=on'

sudo efibootmgr \
    --disk /dev/sdb --part 1 \
    --create --label "Linux" \
    --loader /vmlinuz-linux-zen --unicode \
    "root=PARTUUID=$ROOT resume=PARTUUID=$SWAP rw initrd=\intel-ucode.img initrd=\initramfs-linux-zen.img $FLAG" --verbose
