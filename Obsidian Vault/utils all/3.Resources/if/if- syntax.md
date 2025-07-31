if is used for check condition
# if -for condition

```
if [[ condition ]]; then
	 content 
fi

```
- here it used for check condition like if file exist , dir exist etc, not use commends
	- because  it have [[]]
	
```
if conditon; then
	if true then it work if not other 
else

fi
```
 - here  have some points here we checking condition directly i mean the terminal commands
```
if tmuxifier ls | grep "workspaces"; then
  tmuxifier s workspaces -c "tmuxifier w hai"

else
  tmuxifier s workspaces -c "tmuxifier w hai"
fi
```

## 🎯 2. **Common Real-World Checks**

| **Check What?**       | **How to Check?**                         | **Example**              |
| --------------------- | ----------------------------------------- | ------------------------ |
| File exists           | `if [[ -f filename ]]; then`              | `[[ -f /tmp/test.txt ]]` |
| Directory exists      | `if [[ -d directory ]]; then`             | `[[ -d ~/projects ]]`    |
| Variable is non-empty | `if [[ -n "$var" ]]; then`                | `[[ -n "$HOME" ]]`       |
| Command exists        | `if command -v cmdname >/dev/null; then`  | `command -v git`         |
| Process running       | `if pgrep processname >/dev/null; then`   | `pgrep nginx`            |
| Port open             | `if nc -z localhost 22; then`             | checks SSH port 22       |
| Package installed     | `if dpkg -l packagename >/dev/null; then` | Debian example           |
|                       |                                           |                          |
# why /dev/null ?
	- for error safety , > /dev/null will eliminate silently if error occured

```
if grep "hello" file.txt >/dev/null 2>&1; then
    echo "Found"
else
    echo "Not Found"
fi

Even if file.txt doesn’t exist, you won’t see grep’s error — but your logic will still work correctly.

```
here [[grep]]  greps the hello from file but error occured so  silently exit 