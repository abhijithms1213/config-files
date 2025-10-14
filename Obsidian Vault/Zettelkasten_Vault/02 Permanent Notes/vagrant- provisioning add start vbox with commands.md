 **Date:**  *2025-10-09*
 **Tags:** #permanent #linux #cli-tools  #vagrant 
 **Linked:** [[]], [[]]
## Question :
- ######  *provisioning in vagrant?*  
## Explanatio**n**
---
- *provisioning*  is when u need to run some command when booting up the *vbox* then we use the below code in **Vagrant config file**
```js
    config.vm.provision "shell", inline: <<-SHELL
        whoami
        echo "Entered VBox"
        cat /proc/cpuinfo > ~/cpuinfo.txt
    SHELL
```
## References
- [[]]
