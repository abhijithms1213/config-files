### fonts support emoji 
#font_emoji
-  for add fonts u must download any font eg: `noto-fonts-emoji` then update / add /etc/font/fonts.conf and paste this ,
	- then use fc-cache -fv to refresh the cache 
	```html
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>emoji</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
</fontconfig>
```
---
### cursor add in arch
for add new cursor on linux nwg will list the *cursors* that are listed in **~/.local/share/icons/** so extract that downloaded from the gnome mouse cursor site 