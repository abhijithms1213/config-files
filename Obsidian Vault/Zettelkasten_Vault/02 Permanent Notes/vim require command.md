 **Date:**  *2025-10-11*
 **Tags:** #permanent #linux #nvim 
 **Linked:** [[]], [[]]
## Question :
- ######  *how to import other files like plugin,options!*  
## Explanatio**n**
---
- files can be imported using *require* with **folders.file**
- so the init.lua file will  be 
```lua
in init.lua
require("plugins")
require("core") -- core is the folder , also one thing
in nvim we use lua folder it have the plugins,core dir's
we didn't writ 
require("lua.plugins")
because nvim knows lua contains the configuration files/folders
---
look at the folder structre

require("me.core.options") //in init.lua 
//so create file in  
├── init.lua
└── lua
    └── me
        ├── core
        │   └── options.lua
        │   └── keymaps.lua
        ├── lazy.lua
        └── plugins

it's then modified and in core we declare init.lua in that file
we import like
require("me.core") -- to import all the files or
require("me.core.options")
require("me.core.keymaps")

```
## References
- [[]]