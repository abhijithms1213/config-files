 **Date:**  *2025-10-12*
 **Tags:** #permanent #linux #core 
 **Linked:** [[]], [[linux group file]]
## Question :
- ######  *why vsudo is using / can i edit directly the file?*  
## Explanatio**n**
---
- visudo is actually execute a program located at */usr/sbin/visudo*  
	- this program is used for edit **/etc/sudoers** file in *vim* 
	- so sudoers file is very important the direct edit can cause system issues
	- that's why we use this *visudo* program
	- actually when we use *visudo* it actually create a temporary file 
		- /etc/*sudoers.d* 
		- it's because the direct edit may cause issues if we make any syntax error
- type visudo `to see the location of the program`
## References
- [[]]