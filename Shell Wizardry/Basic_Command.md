# 🧩 Basic Linux Commands

This document explains some commonly used Linux commands with syntax, examples, and descriptions.

(Manual)

-**Help in mac OS** → man [command]
-**Quit the Manual Viewer** → q

## 1. `ls` — List Directory Contents

**Syntax:**
```bash
ls [options] [directory]
```
**Example:**

`ls -lateh ~/ubuntu/`
### Explanation of options

- **`-l`** → long listing format  
- **`-a`** → show hidden files (those starting with `.`)  
- **`-t`** → sort by modification time (newest first)  
- **`-e`** → display file creation time (on supported systems)  
- **`-h`** → human-readable file sizes (e.g., KB, MB)

**Output Example**
```bash
drwxr-xr-x   3 root  wheel    96B 22 Oct 11:03 Volumes
drwxr-xr-x   6 root  wheel   192B 22 Oct 11:03 private
dr-xr-xr-x   4 root  wheel   4.7K 22 Oct 11:02 dev
drwxrwxr-x  21 root  admin   672B 19 Oct 00:03 Applications
```

## 2. `cd` — Change Directory 

**Syntax:**
```bash
cd [directory]
```

### Explanation

- **`cd /home/user/Desktop`** → Moves between directories. 
- **`cd ..`** → show hidden files (those starting with `.`)  
- **`cd ~`** → sort by modification time (newest first) 


## 3. `pwd` — Print Working Directory

**Syntax:**
```bash
pwd
```
**Output Example:**

```bash
/home/username/Documents
```

## 4. `echo` — Print Some Text

**Syntax:**
```bash
echo "Heyy, I am Harshit Joshi"
```

**Output Example**
```bash
Heyy, I am Harshit Joshi
```

## 5. `cat` — Prints the content of the file

**Syntax:**
```bash
cat [options] [filename]
```

### Explanation

- **`cat -b filename.ext`** → Creates a numbered list with non-blank lines
- **`cat -n filename.ext`** → Creates a numbered list with all lines, including blank lines.  
- **`cat test1.txt test2.txt`** → display multiple file 
- **`cat >filename.ext`** →  Create new files, Add text,Exit Ctrl+d
- **`cat test1.txt > test3.txt`** → Redirect Contents of a Single File
- **`cat test1.txt >> test4.txt`** → Append File Contents to Another File
- **`tac test3.txt`** → Display the Contents in Reverse Order

## 6. `touch` — Create Empty Files

**Syntax:**
```bash
touch [filename]
```
**Example:**

`ls -lateh ~/ubuntu/`
### Explanation of options

- **`-l`** → long listing format  
- **`-a`** → show hidden files (those starting with `.`)  
- **`-t`** → sort by modification time (newest first)  
- **`-e`** → display file creation time (on supported systems)  
- **`-h`** → human-readable file sizes (e.g., KB, MB)

**Output Example**
```bash
drwxr-xr-x   3 root  wheel    96B 22 Oct 11:03 Volumes
drwxr-xr-x   6 root  wheel   192B 22 Oct 11:03 private
dr-xr-xr-x   4 root  wheel   4.7K 22 Oct 11:02 dev
drwxrwxr-x  21 root  admin   672B 19 Oct 00:03 Applications
```



