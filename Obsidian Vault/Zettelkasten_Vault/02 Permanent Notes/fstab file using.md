 **Date:**  *2025-11-05*
 **Tags:** #permanent #linux #core 
 **Linked:** [[]], [[]]
## Explanatio**n**
---
### FSTAB
- have the details about our *partitions*
- it's not a normal file it's when booting or that times 
	- looks at this file and fetch the details of partitions and get the info like *boot partition,normal file partition,swap* 
	 
	 ---
	 lsblk -f *-to see partition with uuid* below
	 
	```bash
  UUID=1504a248-a058-4c5d-a59d-462bb4ef6a3d       /               ext4            rw,relatime     0 1

# /dev/sda1
UUID=c863ce19-547e-440a-8d0f-8950f8f5052c       /boot           ext4            rw,relatime     0 2

# /dev/sda2
UUID=a99953dd-cdab-4a98-bb19-e9994782458f       none            swap            defaults        0 0
```
## References
- [[]]