 **Date:**  *2025-11-05*
 **Tags:** #permanent #linux #cli-tools  
 **Linked:** [[]], [[]]
## Explanatio**n**
---
- why ?
	- ssh may fail if already logged in before but after some changes made by that device . now we cannot use the *old* ssh key to connect so need to generate new one.
	- the command is **ssh-keygen -R _ipOftheDevice_**
## References
- [[ssh clone file from local to remote ]]