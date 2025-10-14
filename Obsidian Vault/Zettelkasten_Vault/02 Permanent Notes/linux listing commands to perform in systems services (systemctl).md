 **Date:**  *2025-10-12*
 **Tags:** #permanent #linux #core 
 **Linked:** [[]], [[]]
## Question :
- ######  *all command can use in systemctl to list view status etc*  
## Explanatio**n**
---
- it will list all the services in linux system 
```bash
systemctl list-units --type=service --all
```
---
- here the *enabled* services can be listed
```bash
systemctl list-units --type=service --state=enabled
```
---
- here lists the service that are running/active
```bash
systemctl list --type=service --state=enabled
```
---
- user specific services lists 
```bash
systemctl --user list-unts --type=service --state=all / enabled / running
```
## References
- log of a service  [[journalctl - log of a service]]