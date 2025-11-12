# 💽 Disk and Filesystem Management

The disk is typically divided into one or more partitions, each of which is formatted with a filesystem. Partioning, Formatting or creating a filesystem, and mounting are the key steps while dealing with storage device in Linux. Mounting a partition is temporary action, and to make it persistent across reboots, it must be added to `/etc/fstab` file.

---

## 1. `lsblk` — List Block Devices

**Syntax:**
```bash
lsblk [options]
```
**Example:**

`ls -afl`
### Explanation of options

- **`-a`** → Include empty devices
- **`-f`** → Show filesystem type and labels
- **`-l`** → Use list format instead of tree view 


**Output Example**
```bash
harshitjoshi2002@instance-*****-****:/$ lsblk
NAME         MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
nvme0n1      259:0    0   10G  0 disk 
├─nvme0n1p1  259:2    0  9.9G  0 part /
├─nvme0n1p14 259:3    0    3M  0 part 
└─nvme0n1p15 259:4    0  124M  0 part /boot/efi
nvme1n1      259:1    0  375G  0 disk
```

> **Physical Disk Space**  
>> Actual storage devices connected to your system — **HDDs**, **SSDs**, or **external drives**.  

---

> **Partition Space**  
>> Physical disks are divided into **partitions** — logical sections of the disk that act as independent storage units.  

---

> **Filesystem Space**  
>> Once a partition is formatted with a **filesystem** (like `ext4`, `xfs`, or `btrfs`), it manages how files are stored and retrieved.  

---

> **Logical Volume Space (LVM)**  
>> Allows combining multiple physical disks or partitions into one flexible storage pool.  
>>
>> **Components of LVM:**  
>> - **PV (Physical Volume)** — actual disk or partition  
>> - **VG (Volume Group)** — collection of physical volumes  
>> - **LV (Logical Volume)** — acts like a virtual partition that can be resized dynamically  

---

> **Swap Space**  
>> Swap space acts as virtual memory when your system runs out of RAM. 

---

> **Mounted (Accessible) Space**  
>> Only mounted partitions or volumes are accessible in the filesystem tree. 

---

> **Temporary and Virtual Filesystems**  
>> Some filesystems don’t represent real disk space — they exist in memory or kernel space.
>> | **Filesystem** | **Mounted On** | **Description** |
>> |-----------------|----------------|-----------------|
>> | `tmpfs` | `/tmp`, `/run` | Temporary storage in RAM |
>> | `proc` | `/proc` | Kernel and process information |
>> | `sysfs` | `/sys` | System hardware info |
>> | `devtmpfs` | `/dev` | Device nodes (auto-managed) |

## ✅ Summary Table

| Type          | Example Command    | Description                        |
| ------------- | ------------------ | ---------------------------------- |
| Physical Disk | `lsblk`            | Real hardware storage device       |
| Partition     | `fdisk -l`         | Logical division of disk           |
| Filesystem    | `df -hT`           | Mounted and formatted partitions   |
| LVM           | `lvs` / `vgs`      | Flexible logical volumes           |
| Swap          | `free -h`          | Virtual memory extension           |
| Mounted Space | `mount`            | Active mount points                |
| Virtual FS    | `cat /proc/mounts` | Memory or kernel-based filesystems |




