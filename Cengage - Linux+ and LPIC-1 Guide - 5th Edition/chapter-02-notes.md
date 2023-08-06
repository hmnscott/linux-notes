# Chapter 2 Notes

PATA hard disk configurations
| Description | Linux name |
| --- | --- |
| Primary master PATA hard disk  | hda |
| Primary slave PATA hard disk  | hdb |
| Secondary master PATA hard disk  | hdc |
| Secondary slave PATA hard disk  | hdd |

Example MBR partitioning scheme for the first SATA/SCSI/SAS device
| Description | Linux name | Windows name |
| --- | --- | --- |
| First primary partition on the first SATA/SCSI/SAS device | sda1 | C: |
| Secondary primary partition on the first SATA/SCSI/SAS device | sda2 | D: |
| Third primary partition on the first SATA/SCSI/SAS device | sda3 | E: |
| Fourth primary partition on the first SATA/SCSI/SAS device (EXTENDED) | sda4 | F: |
| First logical drive in the extended partition on the first SATA/SCSI/SAS device | sda5 | G: |
| Second logical drive in the extended partition on the first SATA/SCSI/SAS device | sda6 | H: |
| Third logical drive in the extended partition on the first SATA/SCSI/SAS device | sda7 | I: |

NVMe devices can use **namespace** divisions in addition to partitions. The first NVMe partition (p1) within the first namespace (n1) on the first NVMe SSD (nvme0) would be called **nvme0n1p1**.

For devices that use GPT instead of MBR, there is no primary partition limitation, and no need for extended partitions or logical drives.

Common Linux filesystems and sizes
| Directory | Description | Recommended size |
| --- | --- | --- |
| / | Contains all directories no present on other filesystems | Depends on the size and number of other filesystems present, but is typically 20GB or more |
| /boot | Contains the Linux kernel and boot files | 1GB |
| /home | Default location for user home directories | 500MB per user |
| /usr | System commands and utilities | Depends on the packages installed - typically 30GB or more |
| /usr/local | Location for most additional programs | Depends on the packages installed - typically 30GB or more |
| /opt | An alternate location for additional programs | Depends on the packages installed - typically 30GB or more |
| /var | Contains log files and spools | Depends on whether the Linux system is used as a print server (which contains a large spool). For print servers, 10GB or more is typical. For other systems, 2GB or more is usually sufficient. |
| /tmp | Holds temporary files created by programs | 1GB |

The key combination **Ctrl+Alt+F2** switches to tty2.

* **Commands** indicate the name of the program to execute and are case sensitive.
* **Options** are specific letters that start with a dash (-) and appear after the command name to alter the way the command works. Some options start with two dashes (--) and are referred to as POSIX options and are usually composed of a whole word.
* **Arguments** appear after the command name. They do not start with a dash. They specify the parameters that tailor the command to a user's particular needs.
* Commands, options, and arguments are case sensitive.

### Some common Linux commands
```bash
# clears the terminal screen 
clear

# resets your terminal to use default terminal settings
reset

# displays current logged-in users
who

# displays current logged-in users and their tasks
w

# displays your login name
whoami

# displays the numbers associated with your user account name and group names
# these are commonly referred to as User IDs (UIDs) and Group IDs (GIDs)
id

# displays the current date and time
date

# displays the calendar for the current month
cal

# displays system information
uname -a

# lists files
ls

# exits out of your current shell
exit

# switch to user1 and load user1's environment variables
su - user1
```

| Metacharacter(s) | Description |
| --- | --- |
| $ | Shell variable |
| ~ | Special home directory variable |
| # | Shell script comment |
| & | Background command execution |
| ; | Command termination |
| < << >> > | Input/Output redirection |
| \| | Command piping | 
| * ? [ ] | Shell wildcards |
| ' " \\ | Metacharacter quotes |
| ` | Command substitution |
| ( ) { } | Command grouping |


### Getting Command Help

```bash
# display man page for whoami command
man whoami

# find all commands that have the word "usb" i their names or descriptions
man -k usb
apropos usb

# index manual page database
mandb

# display info page for whoami command
info whoami

# display help for builtin bash command
help echo

# display description of command
whatis whoami
```

#### Manual page section numbers
| Manual page section | Description |
| --- | --- |
| 1 | Commands that any user can execute |
| 2 | Linux system calls | 
| 3 | Library routines | 
| 4 | Special device files |
| 5 | File formats |
| 6 | Games |
| 7 | Miscellaneous |
| 8 | Commands that only the root user can execute |
| 9 | Linux kernel routines |
| n | New commands not categorized yet |


#### Commands to halt and reboot the Linux OS
```bash
# powers off system in four minutes
shutdown -P +4

# halts OS from executing in four minutes
# but does not invoke the ACPI function in BIOS to turn off power
shutdown -H +4

# reboots system in four minutes
shutdown -r +4

# powers off system immediately
shutdown -P now

# reboots system immediately
shutdown -r now

# cancels a scheduled shutdown
shutdown -c

# halts system immediately, but does not power it off
halt

# powers off system immediately
poweroff

# reboots system immediately
reboot

# Use the `wall` (warn all) command to send a message to all users on system
wall The system is shutting down in 15 minutes. Save your work and log off before then.
```

* On the terminal screen press `Shift+Page Up` to view previous pages of information.
* Single quotes prevent the shell from interpreting a metacharacter's special meaning.