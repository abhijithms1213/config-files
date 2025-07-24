
---

### ➤ **Useful Bash Commands.md**

Save actual command snippets here.

# ⚙️ Useful Bash Commands

# File Commands:
- `cp file1.txt backup.txt`
- `mv oldname.txt newname.txt`
- `rm file.txt`
- tar -xvf file.tar 
	- tar -xvf file.tar /todestination
- awk '/\[ALPM\] installed/ { print $(NF-1) }' /var/log/pacman.log
	- for log installed packages by date
- expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20
		it shows the date
## Loops Example:
```bash
for file in *.txt; do
  echo "$file"
done
