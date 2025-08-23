**bash is not as perfect but we can start**
echo "for print anything"
```bash
var1="hello" # no space between declaration

echo "hello is : ${hello}"

echo -e "hello \n next line\nnewline2"# it will work only -e added if,if not \n won't work
```

### read from user 
- we use **read -p** for read 
	```bash
	read -p "enter" userInput
	echo "${userInput}"
	------------------------
	echo "enter your name "
	read name
	echo $name
	# it is also possible 
```
### arithmetic
```bash
var1=20
var2=40
result=$((var1+var2))
echo $result
```
### array 
```bash
array=(one two 3 4 2.2)
echo "${array[0]}"
echo "${array[2]}"
echo "${#array[@]}"
# don't miss the `;` after condition and a do then closed by done
for value in ${array[@]}; do
	echo  "$value"
done
```
**this is how array can be used**
### environment variables
```bash
# Built-in variables:
# There are some useful built-in variables, like:
echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."
```
### use cmd commands
```bash
PWD=$(pwd)
echo "$PWD"
# or 
echo "$(ls)"
```
### if 
- **Numerical Comparisons:**
    
    - `-eq` (equal to)
    - `-ne` (not equal to)
    - `-gt` (greater than)
    - `-ge` (greater than or equal to)
    - `-lt` (less than)
    - `-le` (less than or equal to)
    - Example: `if [ "$num" -gt 10 ];` `then ... fi`
    
- **String Comparisons:**
    
    - `=` or `==` (equal to)
    - `!=` (not equal to)
    - `-z` (string is empty)
    - `-n` (string is not empty)
    - Example: `if [ "$name" == "Alice" ];` `then ... fi`
    
- **File Tests:**
    
    - `-f` (file exists and is a regular file)
    - `-d` (file exists and is a directory)
    - `-e` (file exists)
```bash
read -p "enter number" num

if [ $((num%2)) -ne 0 ]; then
    echo "${num} is odd"
else 
    echo "even"
fi
```
- here there is *gap* between `[ content ]` 
		- also `;` symbol seperates the condition and then
	```bash
v1=20
v2=180
if [ $v1 -eq $v2 ];then
    echo "values are same"
elif [ $v1 -ne $v2 ]; then
    echo "not equals"
fi
variable1=20
variable2=40
variable3=10
if [ $variable1 -ge $variable2 ]; then
    if [ $variable1 -eq $variable2 ];then
        echo "both are equals"
    elif [ $variable1 -gt $variable3 ]; then
        echo "$variable1 is largest"
    else
        echo "$variable1 is greater"
    fi
elif [ $variable2 -gt $variable3 ]; then
    echo "largest number is $variable2"
else 
    echo "largest is $variable3"
fi

```
### loop
```bash
for ((i=0; i<=10; i++)); do
    echo $i
done
# it is also acceptable
for i in 1 2 3 4 5 ; do
	echo $i
done

```
-  you can see `do` for end of the line and `done` for close
	-  in `if` **if then fi** note it


### declare variables
```bash
declare -a array[$limit] # means that :- declare -a as array array_name
or
declare -a array2
declare -i num or num=6

declare -r PI=3.14159 # cannot modifiable after declare

PWD=$(pwd)
```
