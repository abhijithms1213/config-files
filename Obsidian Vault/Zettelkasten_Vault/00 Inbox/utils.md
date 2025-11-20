## Inbox: _topic_

**Date:** *2025-10-28*
**Source:** {{Book / Podcast / Video / Article}}
**Describe**:  __
### Highlights / Thoughts
- traceroute is used to find how the routing goes
	- which routers are intermediate btw the communication 

**Time to Live (TTL)** is ==a mechanism that limits the lifespan of data packets to prevent them from circulating indefinitely on a network==. It works as a counter that is decremented by one each time a packet passes through a router (a "hop"). When the TTL value reaches zero, the router discards the packet to avoid routing loops. 

How it works

- **Initial value**: When a packet is created, it is assigned an initial TTL value, typically a default number like 64, 128, or 255.
- **Decrementing**: Each router the packet passes through reduces the TTL value by one.
- **Expiration**: If the TTL count reaches zero after a router decrements it, the router discards the packet and sends an error message back to the sender.
- **Purpose**: This prevents packets from being stuck in an endless loop, which could clog the network.
- **Traceroute**: Commands like `traceroute` use TTL to map the path a packet takes by incrementing the TTL and seeing which router responds when the packet is discarded.
---
```dart
log('Fetched ${similiarFoodItem.length} similar products: ${similiarFoodItem.map((item) => item.productname).join(', ')}');
// to log all products without for 
```
- k
---
- *unimatrix -c red -u 'Linux'* - which is cmatrix's alternates
	- **unimatrix -n -s 96 -l 'o'** for *cmatrix* like
	- emojis - *unimatrix -c yellow -l 'e'
- top -n 1 -b > top-output.txt 
	- to print the last processses log to a file
- 
---
## package
 yay -S virtualbox-ext-oracle
AUR Explicit (1): virtualbox-ext-oracle-7.2.4-1
:: PKGBUILD up to date, skipping download: virtualbox-ext-oracle
  1 virtualbox-ext-oracle                    (Build Files Exist)
==> Packages to cleanBuild?
==> [N]one [A]ll [Ab]ort [I]nstalled [No]tInstalled or (1 2 3, 1-3, ^4)
==>?
That prompt is just asking whether you want to **rebuild** the package or reuse cached build files from a previous installation.

Here’s what the options mean:

- **[N]one** → Don’t rebuild anything (use existing build files).
    
- **[A]ll** → Rebuild all packages from source (recommended if the old build may be broken).
    
- **[I]nstalled** → Rebuild only those already installed.
    
- **[No]tInstalled** → Rebuild only those not yet installed.
    
- **(1 2 3)** → Choose specific package numbers manually.
---
 Deleting (1/1): /home/cj/.cache/yay/virtualbox-ext-oracle
HEAD is now at 702887e commit virtualbox-ext-oracle 7.2.4-1
Removing Oracle_VirtualBox_Extension_Pack-7.2.4.vbox-extpack
Removing virtualbox-ext-oracle-7.2.4-1-any.pkg.tar.zst
  1 virtualbox-ext-oracle                    (Build Files Exist)
==> Diffs to show?
==> [N]one [A]ll [Ab]ort [I]nstalled [No]tInstalled or (1 2 3, 1-3, ^4)
==>
?
That prompt is coming from **yay**, your AUR helper — it’s just asking whether you want to review the diffs (changes) before rebuilding or reinstalling the package.

Here’s what each option means:

- **N** → Show none of the diffs (skip viewing changes, proceed normally).
    
- **A** → Show all diffs.
    
- **Ab** → Abort the process.
    
- **I** → Show diffs only for installed packages.
    
- **No** → Show diffs only for not-installed packages.
- 

