 **Date:**  *2025-10-14*
 **Tags:** #permanent #linux #cli-tools  #vagrant 
 **Linked:** [[]], [[]]
## Question :
- ######  *why multiple vm specific config included in a provider block?*  
## Explanatio**n**
---
- in windows or linux we use oracle *virtual box*
- so here we setting virtual box's setting through this block
- so we use *vb.memory,vb.cpus,vb.gui* 
	- in mac's config u can see **vmware_desktop** in that time we config in that virtual machine
```bash
## DB vm  ####
  config.vm.define "db01" do |db01|
    db01.vm.box = "bandit145/centos_stream9_arm"
    db01.vm.hostname = "db01"
    db01.vm.network "private_network", ip: "192.168.56.25"
    db01.vm.provider "vmware_desktop" do |vmware|
      vmware.gui = true
      vmware.allowlist_verified = true
    end
  end
  
```
## References
- [[]]