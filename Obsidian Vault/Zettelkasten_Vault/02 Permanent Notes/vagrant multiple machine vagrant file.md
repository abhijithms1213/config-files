 **Date:**  *2025-10-14*
 **Tags:** #permanent #linux #cli-tools  #vagrant 
 **Linked:** [[]], [[]]
## Question :
- ######  **  
## Explanatio**n**
---
-  here *vm.provider* mention that inside it writting the configuration of the virtual box
```
Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  
### DB vm  ####
  config.vm.define "db01" do |db01|
    db01.vm.box = "centos/stream9"
    db01.vm.hostname = "db01"
    db01.vm.network "private_network", ip: "192.168.56.15"
    db01.vm.provider "virtualbox" do |vb|
     vb.memory = "600"
   end

  end # db vm close
end
```
## References
-  [[vagrant why virtual machine's config written in the provider block]] [[]]