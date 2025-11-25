# 💽 Linux Groups and Users

Linux is a multi-user operating system where users and groups are fundamental concepts for managing access and permissions.

> **Users**  
> A user is an account that can log into the system and perform tasks.
> - A User ID (UID) - a numeric identifier
> - A home directory (usually `/home/username`)
> - A default shell (like `/bin/bash`)
>> **Types of Users**  
>> - **Root user** — The superuser with UID 0, has complete system access 
>> - **Regular users** — Normal accounts for people using the system 
>> - **System users** — Created for running services/daemons (like `www-data` for web servers)

> **Groups**  
> A group is a collection of users. Groups simplify permission management - instead of assigning permissions to individual users
> - A unique group name
> - A Group ID (GID)
>> **Types of Groups**  
>> - **Primary group** — Every user has one primary group (usually same name as username)
>> - **Secondary groups** — Users can belong to multiple additional groups 

**Syntax:**
```bash
# Create a group for developers
sudo groupadd developers

# Create users
sudo useradd -m alice
sudo useradd -m bob

# Add users to the developers group
sudo usermod -aG developers alice
sudo usermod -aG developers bob

# Create a shared project directory
sudo mkdir /projects
sudo chown :developers /projects
sudo chmod 770 /projects
```

## 1. `chown` — Change Ownership

command changes the owner and/or group of files and directories.

**Syntax:**
```bash
chown [OPTIONS] [OWNER]:[GROUP] file
```
**Example:**

`ls -lateh ~/ubuntu/`
### Explanation of options

- **`-R`** → Recursive 
- **`-v`** → Verbose (show what's being changed)  

## 2. `chown` — Change Mode (Permissions)

command changes file permissions - who can read, write, or execute a file.

> Understanding Permissions
> - Owner (u) - The user who owns the file
> - Group (g) - Members of the file's group
> - Others (o) - Everyone else
>
>> Each set has three permissions:
>> - r (read) - Value: 4
>> - w (write) - Value: 2
>> - x (execute) - Value: 1

**Syntax:**
```bash
ls -l file.txt

# Output example:
# -rwxr-xr-- 1 alice developers 1024 Nov 25 10:30 file.txt
# | |  |  |
# | |  |  └── Others: r-- (read only)
# | |  └───── Group: r-x (read + execute)
# | └──────── Owner: rwx (read + write + execute)
# └───────── File type (- = file, d = directory, l = link)
```

| Permission | Numeric | Meaning |
|------------|---------|---------|
| `---` | 0 | No permissions |
| `r--` | 4 | Read only |
| `rw-` | 6 | Read and write |
| `rwx` | 7 | Read, write, and execute |
| `r-x` | 5 | Read and execute |
| `--x` | 1 | Execute only |

### Operation: + (add), - (remove), = (set exactly)


**Example:**
```bash
# Remove write permission for group and others
chmod go-w file.txt

# Set exact permissions: owner can read/write, others nothing
chmod u=rw,go= private.txt

# Give group same permissions as owner
chmod g=u file.txt

# Change permissions for all files in directory
chmod -R 755 /var/www/html/

# Set sticky bit so only file owners can delete their files
sudo chmod +t /project  # becomes drwxrwxr-t
```