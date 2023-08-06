# Chapter 2 Challenge


# clear the terminal screen 
clear

# reset your terminal to use default terminal settings
reset

# display current logged-in users
who

# display current logged-in users and their tasks
w

# display your login name
whoami

# display the numbers associated with your user account name and group names
# these are commonly referred to as User IDs (UIDs) and Group IDs (GIDs)
id

# display the current date and time
date

# display the calendar for the current month
cal

# display system information
uname -a

# list files in current directory
ls

# exit out of your current shell
exit

# switch to user1 and load user1's environment variables
su - user1

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

# display one line description of whoami command
whatis whoami

# power off system in four minutes
shutdown -P +4

# halt OS from executing in four minutes
# but does not invoke the ACPI function in BIOS to turn off power
shutdown -H +4

# reboot system in four minutes
shutdown -r +4

# power off system immediately
shutdown -P now

# reboot system immediately
shutdown -r now

# cancel a scheduled shutdown
shutdown -c

# halt system immediately, but does not power it off
halt

# power off system immediately
poweroff

# reboot system immediately
reboot

# Use the `wall` (warn all) command to send a message to all users on system
wall The system is shutting down in 15 minutes. Save your work and log off before then.
