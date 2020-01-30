# Setting up a SWAP file on Digital Ocean

A SWAP file is a space on a hard disk used as the virtual memory extension of a computer's real memory (RAM). <br />
Having a swap file allows your computer's operating system to pretend that you have more RAM than you actually do.

## Digital Ocean Full Guides
[SWAP on VPS](https://www.digitalocean.com/community/tutorials/how-to-configure-virtual-memory-swap-file-on-a-vps)  
[SWAP on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04)  

## Quick Setup Guide
1.	free
2.	cd /var
3.	touch swap.img
4.	chmod 600 swap.img
5.	dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
6.	mkswap /var/swap.img
7.	swapon /var/swap.img
8.	echo "/var/swap.img    none    swap    sw    0    0" >> /etc/fstab
9.	reboot

Log in again and check status is changed with "free" command like in step 1.