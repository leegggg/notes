# fix udev timeout

What I did to "fix" the problem is to modify /etc/lvm/lvm.conf

Find the line "obtain_device_list_from_udev", change it from 1 to 0.

No reboot required. All LVM operations seems to work again after this change (short test so far).

Not entirely sure how safe this is, but it sure beats running "udevadm trigger" manually every time some LVM operations froze (simple things like running lvscan or vgscan).
 
