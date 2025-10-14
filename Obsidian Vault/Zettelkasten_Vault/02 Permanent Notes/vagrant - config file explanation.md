 **Linked:** [[]], [[]]
## Question :
- ######  *familiar config file*  
## Explanatio**n**
---
```python
Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    # Private Network
    config.vm.network "private_network", ip: "192.168.56.17"

    # Public Network
    config.vm.network "public_network", bridge: "en0: wlo1"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
end
```
---
```ad-abstract
on 2nd line config the box get from user community 
set private network and static ip only the host(me) can access
public is assigned by router 
---
vm.provider is a function end with *end*
assigned m/y cpu coures
```
---
[[vagrant - why sync folder defining]] 
provisioning - [[vagrant- provisioning add start vbox with commands]]
## References
- [[]]
