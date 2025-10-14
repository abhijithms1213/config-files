 **Date:**  *2025-10-13*
 **Tags:** #permanent #linux #cli-tools #bluetooth
 **Linked:** [[]], [[]]
## Question :
- ######  *bluetooth  ctl tool in terminal* 
## Explanatio**n**
---
- use *bluetoothctl* tool before that enable *bluetooth service* for access the bluetooth service to this tool.
- *then in interface use* 
	- **power on** to on it
	- **agent on** already good it is i think
	- **scan on** to scan and get *mac id*
	- if not paired then *pair mac_address*
	- then *connect mac_addr*
		- before that use **trust mac_addr** to trust the device
	- use *tldr bluetoothctl* to see more options
	- use *disconnect mac_addr* for disconnect
## References
- [[]]