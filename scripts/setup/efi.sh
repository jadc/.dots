#!/bin/sh
ROOT='c0d4881e-c7d7-0644-8a9d-f0eb60a6a076'
SWAP='82ce2fb4-a2ef-7140-876c-ea2285784302'

# Kernel flags
QUIET='quiet loglevel=3 rd.systemd.show_status=auto rd.udev.log_level=3'
PERFORMANCE='nowatchdog nomce mitigations=off random.trust_cpu=on fsck.mode=skip libahci.ignore_sss=1'
KVM='nvidia-drm.modeset=1 i915.modeset=1 intel_iommu=on vfio-pci.ids=10de:1e84,10de:10f8,10de:1ad8,10de:1ad9'
FLAG="$QUIET $PERFORMANCE $KVM"

sudo efibootmgr \
    --disk /dev/sdb --part 1 \
    --create --label "Linux" \
    --loader /vmlinuz-linux-zen --unicode \
    "root=PARTUUID=$ROOT resume=PARTUUID=$SWAP rw initrd=\intel-ucode.img initrd=\initramfs-linux-zen.img $FLAG" --verbose
