 **Date:**  *2025-11-04*
 **Tags:** #permanent #linux #cli-tools  #networking 
 **Linked:** [[]], [[]]
## Explanatio**n**
---
- **Traceroute** is using to trace packets to get info about how the packets are sending through different hop's(routers) to end the journey (*to destination ip*) 
- so it's a tool to track
- **traceroute -4 google.com** 
	- -4 indicates ipV4 and domain/ip
- so here 30 hopes are maximum 
	- means this processes ends when 30 hops reaches.
	- TTL(*time to live*) of a package is refer as *life span of the packets* so it's decreamented by 1 when the packet pass through *hops* everytime -1,
	- and finally at 30 it become 0.
	- a tcp based messaaging protocol(**ICMP** = _Internet Control Message Protocol_) is using to know the packet pessed each hop or if it's failed or ignored then * is printed if(**not replay the icmp**)
### why icmp is not replaying or like this ***
	- some hop's didn't replay or eliminates the replay
	- that's why it's like *** 
	- may be of security reaasons they eliminate icmp to reply

## References
- [[nw ICMP protocol]]